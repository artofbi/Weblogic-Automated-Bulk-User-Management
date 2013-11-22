@ECHO OFF
SETLOCAL
goto endcomment

# Script Name	:	createOBIEEWorkshopUsers.bat
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
REM Create Workshop Users AutoMagically
REM ===================================

:endcomment

set createOrRemove=create
set wlsURL=t3://localhost:7001
set wlsUser=weblogic
set wlsPassword=daweblogicuserpassword
set namePrefix=class1
set namePassword=crazypassword
set prefixStartNum=1
set prefixFinishNum=20
set userGroupAssign=BIStudentsorBIConsumerorsomeotherspecificapprole
set useZeroPaddingCount=0



REM C:\Oracle\FMW\oracle_common\common\bin

call C:\Oracle\FMW\oracle_common\common\bin\wlst.cmd createOBIEEWorkshopUsers.py %wlsURL% %wlsUser% %wlsPassword% %createOrRemove% %namePrefix% %namePassword% %prefixStartNum% %prefixFinishNum% %userGroupAssign% %useZeroPaddingCount%


ENDLOCAL