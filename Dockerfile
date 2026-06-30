# Use an official image that already has Flutter installed
FROM ghcr.io/cirruslabs/flutter:3.24.5

# Set the working folder inside the container
WORKDIR /app

# Copy all your project files into the container
COPY . .

# Download all the packages your app needs
RUN flutter pub get

# Build the Android APK (release version)
RUN flutter build apk --release
