if diff mix.old.exs mix.exs | grep "version:"; then
    mix hex.publish --yes
else
    echo version same
fi