# TySug Sourcey `llms.txt` delivery report

- **Project:** [Dynom/TySug](https://github.com/Dynom/TySug) is a real Go spelling-suggestion library and web service. Its API is spread across the runnable command and six packages, so agents benefit from one accurate map rather than guessing from package-level README files.
- **Pinned source:** the generated documentation reads the real upstream source at `708d0917d75b114dded2e9fc9b485f988c6edf88`; the reproducible contribution revision is `104e64505a4666fccbbb1d6e658b2b7b2f5efe9d`.
- **Generator:** Sourcey `3.6.5`, pinned in `docs/sourcey/package.json` and `pnpm-lock.yaml`, using the committed `sourcey.config.ts` and its native Go adapter.
- **Reproduction command:** `cd docs/sourcey && pnpm install --frozen-lockfile && pnpm build` under Node `24.14.0` and pnpm `11.7.0` built seven pages and rewrote 118 base-path navigation links.
- **Generation proof:** a clean rebuild ended with `git diff --exit-code` clean. The regenerated `llms.txt` retained SHA-256 `a1269aae0810f72b3c210ad8bf8470fa89837ab5f8381233fbf761f1bc4551aa`, demonstrating it was generated rather than hand-written.
- **Live artifact:** [`llms.txt`](https://q10283245.github.io/docs/reference/llms.txt) returned HTTP 200 as `text/plain`, contains the TySug name, and links to the generated reference pages.
- **Entry audit 1:** [`cmd/web`](https://q10283245.github.io/docs/reference/pkg-cmd-web.html) returned HTTP 200 and the title `cmd/web - TySug`.
- **Entry audit 2:** [`finder`](https://q10283245.github.io/docs/reference/pkg-finder.html) returned HTTP 200 and the title `finder - TySug`.
- **Entry audit 3:** [`internal/rwc`](https://q10283245.github.io/docs/reference/pkg-internal-rwc.html) returned HTTP 200 and the title `internal/rwc - TySug`.
- **Entry audit 4:** [`keyboard`](https://q10283245.github.io/docs/reference/pkg-keyboard.html) returned HTTP 200 and the title `keyboard - TySug`.
- **Entry audit 5:** [`server`](https://q10283245.github.io/docs/reference/pkg-server.html) returned HTTP 200 and the title `server - TySug`.
- **Entry audit 6:** [`server/service`](https://q10283245.github.io/docs/reference/pkg-server-service.html) returned HTTP 200 and the title `server/service - TySug`.
- **Entry audit 7:** the generated [Go API index](https://q10283245.github.io/docs/reference/) returned HTTP 200 and links the same package set.
- **Upstream adoption path:** [Dynom/TySug PR #25](https://github.com/Dynom/TySug/pull/25) is open against the project itself and adds the generated `llms.txt`, API pages, build configuration, reproducibility lockfile, and a maintainer-facing README link. A merge is not claimed or required.
- **Required GitHub star:** the authenticated `q10283245` session shows `sourcey/sourcey` as Starred; Frantic's own machine verifier remains authoritative for this condition.
- **Governed check:** `runx-cli 0.7.0` executed the published `sourcey-publication-check` fixture, which fetched the live artifact, compared its digest, checked all seven targets and the upstream PR, and sealed receipt `runx:receipt:sha256:256a2647abec04ed432b7731a43c0030f655b918ade258cf14710e54707cc3a7`.
- **Receipt verification:** the content digest, content address, and Ed25519 production signature all validate with key id `renewal-goal-q10283245-20260714`; the verification has no findings.

