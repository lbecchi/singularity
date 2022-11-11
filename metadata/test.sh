#!/bin/bash
echo "testing LS"
singularity exec docker://lbecchi/metadata ls


echo
echo "testing PWD"
singularity exec docker://lbecchi/metadata pwd



echo
echo "testing NODE version"
singularity exec docker://lbecchi/metadata node -v

echo
echo "show NODE global packages"
singularity exec -B /usr/local/lib/node_modules docker://lbecchi/metadata ls /usr/local/lib/node_modules

echo
FILE=test.csv
RUNS=1000
if test -f "$FILE"; then
    truncate -s 0 $FILE
else
    touch $FILE
fi
echo "generating test CSV"

for (( i=1; i <= $RUNS; i++)); do
    string=$(gpw 1 25)
    echo "$i,$string" >> $FILE
done
echo "converting test file to XLSX"

singularity exec -B /usr/local/lib/node_modules docker://lbecchi/metadata node test.js