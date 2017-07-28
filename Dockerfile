FROM jenkins
USER root
RUN apt-get update && apt-get install curl libunwind8 gettext && curl -sSL -o dotnet.tar.gz https://go.microsoft.com/fwlink/?linkid=848826 && mkdir -p /opt/dotnet && tar zxf dotnet.tar.gz -C /opt/dotnet && ln -s /opt/dotnet/dotnet /usr/local/bin
USER jenkins
