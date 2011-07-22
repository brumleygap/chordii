#!/bin/sh
echo a2crd - checking conversion of titles, chords below lyrics...
./a2crd test/data/below.input > below.actual
diff below.actual test/data/below.expected
exitcode=$?
rm below.actual
exit $exitcode
