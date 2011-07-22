#!/bin/sh
echo a2crd - checking conversion of chords above lyrics...
./a2crd test/data/above.input > above.actual
diff above.actual test/data/above.expected
exitcode=$?
rm above.actual
exit $exitcode
