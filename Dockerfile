FROM mcr.microsoft.com/dotnet/sdk:10.0 AS build
WORKDIR /src
COPY DotNetCore-Basic.csproj .
RUN dotnet restore DotNetCore-Basic.csproj

COPY . .
RUN dotnet publish DotNetCore-Basic.csproj -c Release -o /app/out --no-restore

FROM mcr.microsoft.com/dotnet/aspnet:10.0 AS runtime
WORKDIR /app
ENV ASPNETCORE_URLS=http://+:80
EXPOSE 80
COPY --from=build /app/out ./
ENTRYPOINT ["dotnet", "DotNetCore-Basic.dll"]