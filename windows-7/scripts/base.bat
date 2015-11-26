::Enable RDP

::There's a bug in this script that prevents Windows to install correctly, so we have to skip it until it's fixed.
exit /b

netsh advfirewall firewall add rule name="Open Port 3389" dir=in action=allow protocol=TCP localport=3389
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f

::Disable Auto Logon

%windir%\microsoft.net\framework64\v4.0.30319\ngen.exe executequeueditemsreg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v AutoAdminLogon /d 0 /f

::Compile .NET Assemblies
::http://support.microsoft.com/kb/2570538
::http://robrelyea.wordpress.com/2007/07/13/may-be-helpful-ngen-exe-executequeueditems/

if "%PROCESSOR_ARCHITECTURE%"=="AMD64" goto 64BIT

%windir%\microsoft.net\framework\v4.0.30319\ngen.exe update /force /queue
%windir%\microsoft.net\framework\v4.0.30319\ngen.exe executequeueditems

exit /b

:64BIT
%windir%\microsoft.net\framework\v4.0.30319\ngen.exe update /force /queue
%windir%\microsoft.net\framework64\v4.0.30319\ngen.exe update /force /queue
%windir%\microsoft.net\framework\v4.0.30319\ngen.exe executequeueditems
