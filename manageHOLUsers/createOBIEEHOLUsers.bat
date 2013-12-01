@ECHO OFF
SETLOCAL
goto endcomment

# Script Name	:	createOBIEEHOLUsers.bat
# Created by	:	Art of BI Software (artofbi.com)
# Author		:	C.Screen
# Date			:	2013/10/01

##---------------------------------------------------------
# NOTES
##---------------------------------------------------------
#	1.  	...
#
##---------------------------------------------------------

REM ===================================
REM Create HOL Users AutoMagically
REM ===================================

:endcomment

set createOrRemove=create 
set wlsURL=t3://localhost:7001
set wlsUser=weblogic
set wlsPassword=Admin123
set namePrefix=HOL
set namePassword=Admin123!
set prefixStartNum=1
set prefixFinishNum=5
set userGroupAssign=BIConsumers
set useZeroPaddingCount=0
set fmwHome=E:/Oracle/FMW



REM C:/Oracle/FMW/oracle_common/common/bin

call %fmwHome%/oracle_common/common/bin/wlst.cmd wlstScripts/createOBIEEHOLUsers.py %wlsURL% %wlsUser% %wlsPassword% %createOrRemove% %namePrefix% %namePassword% %prefixStartNum% %prefixFinishNum% %userGroupAssign% %useZeroPaddingCount%


ENDLOCAL