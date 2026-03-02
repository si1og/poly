#!/bin/bash

echo "🔄 Syncing submodules..."

paths=$(git config --file .gitmodules --get-regexp path | awk '{print $2}')

for path in $paths; do
  cd "$path"
  if ! git diff --quiet || ! git diff --cached --quiet; then
    echo "📦 $path — committing & pushing..."
    git add -A
    git commit -m "update $(date +%Y-%m-%d)"
    git push
  else
    echo "✅ $path — clean"
  fi
  cd - > /dev/null
done

echo ""
echo "🔄 Updating poly..."
git add -A
if ! git diff --cached --quiet; then
  git commit -m "update submodules $(date +%Y-%m-%d)"
  git push
  echo "✅ poly pushed"
else
  echo "✅ poly — clean"
fi
