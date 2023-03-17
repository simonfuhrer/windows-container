FROM mcr.microsoft.com/windows/server:ltsc2022
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]


RUN Install-PackageProvider -Name NuGet -Force -Scope CurrentUser ; \
    Install-Module -Name NetworkingDsc -force -Confirm:$false ; \
    Install-Module -Name Microsoft365DSC -RequiredVersion 1.23.315.2 -force -Confirm:$false ; \
    Update-M365DSCDependencies
    
