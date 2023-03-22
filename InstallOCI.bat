@echo off

rem install chocolatey
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco --version


rem Install Python
echo Installing Python...
choco install python3 -y
set PATH=%PATH%;C:\Python39;C:\Python39\Scripts


rem Install the OCI CLI
echo Installing OCI CLI...
pip3 install oci-cli

rem Configure the OCI CLI
echo Configuring OCI CLI...
oci setup config

rem Verify the OCI CLI installation
echo Verifying OCI CLI installation...
oci --version

echo Done.

pause