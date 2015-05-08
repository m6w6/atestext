dnl $Id$
dnl config.m4 for extension atestext

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(atestext, for atestext support,
dnl Make sure that the comment is aligned:
dnl [  --with-atestext             Include atestext support])

dnl Otherwise use enable:

dnl PHP_ARG_ENABLE(atestext, whether to enable atestext support,
dnl Make sure that the comment is aligned:
dnl [  --enable-atestext           Enable atestext support])

if test "$PHP_ATESTEXT" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-atestext -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/atestext.h"  # you most likely want to change this
  dnl if test -r $PHP_ATESTEXT/$SEARCH_FOR; then # path given as parameter
  dnl   ATESTEXT_DIR=$PHP_ATESTEXT
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for atestext files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       ATESTEXT_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$ATESTEXT_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the atestext distribution])
  dnl fi

  dnl # --with-atestext -> add include path
  dnl PHP_ADD_INCLUDE($ATESTEXT_DIR/include)

  dnl # --with-atestext -> check for lib and symbol presence
  dnl LIBNAME=atestext # you may want to change this
  dnl LIBSYMBOL=atestext # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $ATESTEXT_DIR/$PHP_LIBDIR, ATESTEXT_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_ATESTEXTLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong atestext lib version or lib not found])
  dnl ],[
  dnl   -L$ATESTEXT_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(ATESTEXT_SHARED_LIBADD)

  PHP_NEW_EXTENSION(atestext, atestext.c, $ext_shared)
fi
