repos=(
  sem2/mcs-cpp-coursework-2nd-sem
  sem2/mcs-cpp-labs-2nd-sem
  sem3/arsens-labs/mcs-sem3-dismath-lab2
  sem3/cvm
  sem3/dismath
  sem3/qt-labs-sem3
  sem3/sem3-oop-labs
  sem3/tau
  sem3/zed-cpp-debug-conf
  sem4/cpmath
  sem4/databases
  sem4/func-programming
  sem4/miccontrol/labs
)

for repo in "${repos[@]}"; do
  git rm -f --cached "$repo" 2>/dev/null
done

for repo in "${repos[@]}"; do
  url=$(cd "$repo" && git remote get-url origin 2>/dev/null)
  if [ -n "$url" ]; then
    git submodule add -f "$url" "$repo"
    echo "✅ $repo -> $url"
  else
    echo "⚠️  No remote for $repo"
  fi
done
