if grep "version:" diff.txt; then
    echo version not same
    mix hex.publish --yes
else
    echo version same
fi