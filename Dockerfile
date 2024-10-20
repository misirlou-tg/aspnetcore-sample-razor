FROM mcr.microsoft.com/dotnet/sdk:8.0-alpine AS build-env
WORKDIR /app

# Copy source to build environment and build
COPY . .
RUN dotnet publish --os linux --arch x64 /t:Publish -c Release --output publish

# Build runtime image
# Not using alpine image, it was missing SQLite dependencies like libe_sqlite3.so
FROM mcr.microsoft.com/dotnet/aspnet:8.0
# Copy the build artifacts from the build environment
COPY --from=build-env /app/publish /app
WORKDIR /app
# Default listener is port 8080
EXPOSE 8080

ENTRYPOINT ["dotnet", "RazorPagesMovie.dll"]
