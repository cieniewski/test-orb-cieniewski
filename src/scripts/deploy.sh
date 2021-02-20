#!/usr/bin/env sh
git show HEAD~1:mix.exs  > mix.old.exs
if diff mix.old.exs mix.exs | grep "version:"; then
    mix hex.publish --yes
else
    echo version same
fi