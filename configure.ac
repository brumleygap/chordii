# This file is part of Chordie.
#
# Chordie is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Chordie is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Chordie.  If not, see <http://www.gnu.org/licenses/>.

AC_INIT([Chordie], [4.0], [jvromans@users.sourceforge.net])
AC_DEFINE([PATCH_LEVEL],["0"],[Define to the minor version (aka patch level) of this package.])

AM_INIT_AUTOMAKE
AC_CONFIG_HEADER([config.h])

# Checks for programs.
AC_PROG_CC

# Checks for libraries.

# Checks for header files.
AC_FUNC_ALLOCA
AC_HEADER_STDC
AC_CHECK_HEADERS([stdlib.h string.h unistd.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_C_CONST

# Checks for library functions.
AC_CHECK_FUNCS([strdup])

# Do we need this one?
AC_REPLACE_FUNCS

# Enforce programmer sanity.
if test "$CC" = "gcc"; then
  CFLAGS="$CFLAGS -Wall -pedantic -ansi -g"
fi
AC_SUBST(CFLAGS)

# Desired output files.
AC_CONFIG_FILES([
  Makefile 
  src/Makefile
  contrib/rpm/chordie.spec
])
AC_OUTPUT
