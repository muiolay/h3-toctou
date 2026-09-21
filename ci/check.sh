#!/usr/bin/env bash
if ls PAYLOAD-*.txt >/dev/null 2>&1 && grep -q FORBIDDEN PAYLOAD-*.txt; then
  echo "H3-POLICY-VIOLATION: forbidden content present"
  exit 1
fi
echo "H3-POLICY-OK"
