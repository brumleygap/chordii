#!/bin/sh
echo a2crd - checking that Chordii directives are ignored in input...
./a2crd test/data/passthrough.input > passthrough.actual
diff passthrough.actual test/data/passthrough.expected
exitcode=$?
rm passthrough.actual
exit $exitcode
