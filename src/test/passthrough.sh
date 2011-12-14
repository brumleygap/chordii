#!/bin/sh
srcdir=${srcdir-.}
top_builddir=${top_builddir-.}
echo a2crd - checking that Chordii directives are ignored in input...
$top_builddir/a2crd $srcdir/test/data/passthrough.input > passthrough.actual
diff passthrough.actual $srcdir/test/data/passthrough.expected
exitcode=$?
rm passthrough.actual
exit $exitcode
