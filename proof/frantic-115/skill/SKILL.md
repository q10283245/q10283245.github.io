---
name: sourcey-publication-check
description: Verify the live TySug Sourcey llms.txt, its linked pages, and the upstream adoption pull request.
source:
  type: cli-tool
  command: sh
  args:
    - ./run.sh
  timeout_seconds: 30
  sandbox:
    profile: readonly
    cwd_policy: skill-directory
inputs:
  public_url:
    type: string
    required: true
  expected_sha256:
    type: string
    required: true
  pr_url:
    type: string
    required: true
runx:
  input_resolution:
    required:
      - public_url
      - expected_sha256
      - pr_url
---

Fetch the Sourcey-generated `llms.txt`, verify its exact digest, check every linked
TySug reference page, and confirm the upstream pull request is publicly reachable.

