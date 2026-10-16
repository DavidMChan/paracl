#!/usr/bin/env sh
# Deploy the site to Cloudflare Pages (https://paracl.pages.dev).
# Needs `wrangler login` with access to the Cloudflare account that owns the "paracl" project.
set -eu
cd "$(dirname "$0")"
out=$(mktemp -d)
trap 'rm -rf "$out"' EXIT
cp index.html "$out/"
cp -R assets "$out/"
wrangler pages deploy "$out" --project-name paracl --branch main --commit-dirty=true
