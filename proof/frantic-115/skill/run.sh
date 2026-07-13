#!/bin/sh
set -eu

public_url="${RUNX_INPUT_PUBLIC_URL:?missing public_url}"
expected_sha256="${RUNX_INPUT_EXPECTED_SHA256:?missing expected_sha256}"
pr_url="${RUNX_INPUT_PR_URL:?missing pr_url}"
base="https://q10283245.github.io/docs/reference"

actual_sha256=$(/usr/bin/curl -fsSL "$public_url" | /usr/bin/shasum -a 256 | /usr/bin/awk '{print $1}')
if [ "$actual_sha256" != "$expected_sha256" ]; then
  printf 'digest mismatch: expected %s, got %s\n' "$expected_sha256" "$actual_sha256" >&2
  exit 1
fi

checked=0
for target in \
  "$base/" \
  "$base/pkg-cmd-web.html" \
  "$base/pkg-finder.html" \
  "$base/pkg-internal-rwc.html" \
  "$base/pkg-keyboard.html" \
  "$base/pkg-server.html" \
  "$base/pkg-server-service.html"
do
  /usr/bin/curl -fsSL -o /dev/null "$target"
  checked=$((checked + 1))
done

/usr/bin/curl -fsSL -o /dev/null "$pr_url"

printf '{"status":"verified","project":"Dynom/TySug","sourcey":"3.6.5","llms_sha256":"%s","live_targets":%s,"upstream_pr":"%s"}' \
  "$actual_sha256" "$checked" "$pr_url"

