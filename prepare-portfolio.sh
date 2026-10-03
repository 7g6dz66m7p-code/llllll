#!/usr/bin/env bash
set -euo pipefail
cat portfolio-payload/part*.b64 | tr -d '\n\r' | base64 -d > portfolio-runtime.tar.gz
rm -rf ahmed-albadr-portfolio
tar -xzf portfolio-runtime.tar.gz
echo "Portfolio source prepared."
