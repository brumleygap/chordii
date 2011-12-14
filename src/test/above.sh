#!/bin/sh
srcdir=${srcdir-.}
top_builddir=${top_builddir-.}
echo a2crd - checking conversion of chords above lyrics...
$top_builddir/a2crd $srcdir/test/data/above.input > above.actual
diff above.actual $srcdir/test/data/above.expected
exitcode=$?
rm above.actual
exit $exitcode
