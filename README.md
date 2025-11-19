dotnet run

docker build -t dotnetcore-basic .
docker run --rm -p 8080:80 dotnetcore-basic
curl http://localhost:8080/test
curl http://localhost:8080/weatherforecast