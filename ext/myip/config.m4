dnl $Id$
dnl config.m4 for extension myip

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(myip, for myip support,
dnl Make sure that the comment is aligned:
dnl [  --with-myip             Include myip support])

dnl Otherwise use enable:

PHP_ARG_ENABLE(myip, whether to enable myip support,
dnl Make sure that the comment is aligned:
[  --enable-myip           Enable myip support])

if test "$PHP_MYIP" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-myip -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/myip.h"  # you most likely want to change this
  dnl if test -r $PHP_MYIP/$SEARCH_FOR; then # path given as parameter
  dnl   MYIP_DIR=$PHP_MYIP
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for myip files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       MYIP_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$MYIP_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the myip distribution])
  dnl fi

  dnl # --with-myip -> add include path
  dnl PHP_ADD_INCLUDE($MYIP_DIR/include)

  dnl # --with-myip -> check for lib and symbol presence
  dnl LIBNAME=myip # you may want to change this
  dnl LIBSYMBOL=myip # you most likely want to change this

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $MYIP_DIR/$PHP_LIBDIR, MYIP_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_MYIPLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong myip lib version or lib not found])
  dnl ],[
  dnl   -L$MYIP_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(MYIP_SHARED_LIBADD)

  PHP_NEW_EXTENSION(myip, myip.c, $ext_shared,, -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1)
fi
