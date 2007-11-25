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
AC_CONFIG_HEADERS(src/config.h)
AC_DEFINE([PATCH_LEVEL],["0"],[Define to the minor version (aka patch level) of this package.])
AM_INIT_AUTOMAKE
AC_PROG_CC
AC_REPLACE_FUNCS
if test "$CC" = "gcc"; then
  CFLAGS="$CFLAGS -Wall -pedantic -ansi -g"
fi
AC_SUBST(CFLAGS)
AC_CONFIG_FILES([
  Makefile 
  src/Makefile
  contrib/rpm/chordie.spec
])
AC_OUTPUT
