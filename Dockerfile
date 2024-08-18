# Use the official ASP.NET Core runtime image
FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS runtime

# Set the working directory inside the container
WORKDIR /app

# Copy the built application from the build environment
COPY . .

# Expose the port your application runs on
EXPOSE 80

# Define the entry point for the container
ENTRYPOINT ["dotnet", "salesapi.dll"]