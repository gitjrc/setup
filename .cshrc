set prompt="%m:%/% "            # for tcsh
alias d    	ls -F
alias dir  	'ls -aF \!*'
alias lj     	jobs -l
alias tdir 	'ls -tlaF \!* | more'
alias tidr 	'ls -tlaF \!* | more'
alias vdir	' ls -laF \!* | more'
alias vidr	' ls -laF \!* | more'
alias cleanup	'rm -f *.BAK; rm -f *.CKP; rm -f *~'
alias ty more
alias h         history

set history=200 
set filec                       # enable filename completion

if ( `set|/bin/egrep '^cdpath'` == "" && $?CDPATH ) then
  set cdpath=`echo $CDPATH|tr ':' ' '`
endif
setenv PATH ${PATH}:${HOME}/bin:.
setenv SQLPATH ${HOME}/sql
setenv USERNAME `id | sed "s/[a-zA-Z= 0-9]*(\([a-zA-Z0-9]*\)).*/\1/"`
if ( $?USER_HOME == 0) then
  setenv USER_HOME ~$USERNAME
endif

setenv EDITOR emacs
# Keep git from bellyaching when running commands inside Emacs shell
setenv PAGER /bin/cat

setenv ORACLE_HOME /u01/app/oracle/product/11.2.0/xe
setenv ORACLE_SID XE
setenv NLS_LANG `$ORACLE_HOME/bin/nls_lang.sh`
setenv ORACLE_BASE /u01/app/oracle
setenv LD_LIBRARY_PATH $ORACLE_HOME/lib
setenv PATH $ORACLE_HOME/bin:$PATH
