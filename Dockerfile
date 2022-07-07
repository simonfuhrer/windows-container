FROM mcr.microsoft.com/windows/servercore:ltsc2022

RUN Install-PackageProvider -Name NuGet -Force -Scope CurrentUser ; \
    Register-PSRepository -Default -InstallationPolicy Trusted -verbose ; \
    Install-Module -Name NetworkingDsc -force -Confirm:$false ; \
    Install-Module -Name Microsoft365DSC -RequiredVersion 1.22.615.1 -force -Confirm:$false ; \
    Update-M365DSCDependencies
    


SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]
