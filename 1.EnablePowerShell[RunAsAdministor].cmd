@echo off
echo ###################################################
echo Enabling PowerShell Script Access..
echo ....
powershell -command "Set-ExecutionPolicy RemoteSigned"
::start-process PowerShell -verb runas

echo Now you can run .ps1 file via "Run with PowerShell"
echo ###################################################

pause