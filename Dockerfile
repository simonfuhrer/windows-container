ARG version

FROM mcr.microsoft.com/windows/servercore:${version}

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]
