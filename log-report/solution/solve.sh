#!/bin/bash
set -euo pipefail

# BUGGY: this script writes an incorrect report (wrong counts)
# The verifier should detect this as a failing submission.
mkdir -p /app
cat > /app/report.json <<'JSON'
{"total_requests": 0, "unique_ips": 1, "top_path": "/not_found"}
JSON
echo "wrote buggy /app/report.json"
