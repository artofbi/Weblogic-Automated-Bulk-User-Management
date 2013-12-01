WebLogic-Automated-Bulk-User-Management
=======================================

Scripts provides a means to automate the creation, etc. of a bulk set of users within the WebLogic Server Default Identity Provider

How-To Use It
-------------
1. Download the Repo using git clone
2. Navigate to the manageHOLUsers directory
3. Edit the createOBIEEHOLUsers.bat file by updating the local environment variables.  
The naming convention is fairly straightforward.  Updated your WLS admin information your Fusion Middleware (FMWHome) directory.  Also update the variables which indicate the prfix for the new users to be created and the start and finish number of users.
4. Execute createOBIEEHOLUsers.bat from the command line.
5. Remove (clean up) users by editing the modifyOBIEEHOLUSers.bat file variables and running it from the command line.

Main Variables Descriptions
---------------------------
+ createOrRemove - Options are create or remove. These are in true effect as the initial release of this repository uses two different scripts to manage the logic.
+ wlsURL - This is the T3 protocol URL for your WebLogic Server. Only use t3:// and not http:// unless otherwise advised
+ wlsUser - The name of the WebLogic Administrator you will use to connect to your WLS instance
+ wlsPassword - The password of the WebLogic Administrator you will use to connect to your WLS instance
+ namePrefix - The prefix of the users you wish to create. For example if you want 20 users for your HOL at the OOW conference you might use: OOW
+ namePassword - The password for all of the users you wish to create
+ prefixStartNum - Ultimately the starting count of users you wish to create. It will by default be the suffix appended to your newly created user in the creation loop. Leave 1 as the default unless you understand the creation loop code in the PY file.
+ prefixFinishNum - Ultimately the finishing count of users you wish to create. This is the last number in the creation loop, ex: If creating 15 users, enter 15, and the end result would be, OOW15
+ userGroupAssign - The WebLogic Server default authenticator Group which you wish to assign all users that get created from the script
+ useZeroPaddingCount - The suffix integer that gets appended to your "namePrefix" variable for the user name can be left zero padded. This count represents the number of zeros.
+ fmwHome - The Fusion Middleware Home which the script will reference to call the core WLST.cmd|sh file to run the PY scripts against the WebLogic Server, ex: C:\Oracle\FMW


Copyright & License
===================

Copyright (C) 2013 WebLogic Automated Bulk User Management - Released under the MIT License.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
