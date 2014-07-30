#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT([FULL-PACKAGE-NAME], [VERSION], [BUG-REPORT-ADDRESS])
AC_CONFIG_SRCDIR([string.c])
AC_CONFIG_HEADERS([config.h])

# Checks for programs.
AC_PROG_CC

# Checks for libraries.

# Checks for header files.

# Checks for typedefs, structures, and compiler characteristics.
AC_TYPE_UID_T
AC_TYPE_MODE_T
AC_TYPE_OFF_T
AC_TYPE_SIZE_T
AC_TYPE_UINT32_T

# Checks for library functions.
AC_CHECK_FUNCS([getcwd])

AC_CONFIG_FILES([Makefile])
AC_CONFIG_SUBDIRS([arch
                   tests/assert
                   tests/file
                   tests/loader
                   tests/math
                   tests/memory
                   tests/proc
                   tests/string])
AC_OUTPUT( arch/Makefile tests/assert/Makefile tests/file/Makefile tests/loader/Makefile tests/math/Makefile tests/memory/Makefile tests/proc/Makefile tests/string/Makefile, echo timestamp >stamp-h)
AM_INIT_AUTOMAKE()
