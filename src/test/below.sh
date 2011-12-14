#!/bin/sh
srcdir=${srcdir-.}
top_builddir=${top_builddir-.}
echo a2crd - checking conversion of titles, chords below lyrics...
$top_builddir/a2crd $srcdir/test/data/below.input > below.actual
diff below.actual $srcdir/test/data/below.expected
exitcode=$?
rm below.actual
exit $exitcode
