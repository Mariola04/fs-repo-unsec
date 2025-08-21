# vuln-repo-mini (intentionally insecure test repo)

This repository is **intentionally** packed with small, fast-to-scan examples that should trigger a variety of scanners.
All secrets/keys herein are **fakes for testing** (non-functional). Do **NOT** reuse in real systems.

**Included scanners/targets to trigger:** zizmor (GitHub Actions), trufflehog (secrets), trivy (Dockerfile + K8s), OIDC misconfig in Actions, Super-Linter (lint issues), ShellCheck (bad shell), unused + expired secrets.

## Notes
- Any credentials are dummy placeholders (e.g., `ghp_`, `AKIA...`, `xoxb-...`, `sk_live_...`) to trigger patterns only.
- The TLS cert file has an old NotAfter date to simulate **expired** secrets/certs.
- Workflow uses `pull_request_target`, unpinned actions, broad `permissions`, and `id-token: write` on PRs (all bad on purpose).
- Kubernetes manifest runs as root and privileged (bad).

*Use this for scanner testing only.*
