#!/bin/bash
set -euo pipefail
mkdir -p /logs/verifier
set +e
pytest /tests/test_outputs.py --ctrf /logs/verifier/ctrf.json -rA
STATUS=$?
set -e
if [ $STATUS -eq 0 ]; then
  echo 1 > /logs/verifier/reward.txt
else
  echo 0 > /logs/verifier/reward.txt
fi
exit $STATUS
