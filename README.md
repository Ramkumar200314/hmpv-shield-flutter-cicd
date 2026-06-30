# 🛡️ HMPV Shield(HMPV RISK IDENTIFICATION AND ADVICE SYSTEM)

**HMPV Shield** is a Flutter-based Android app developed as an MCA final year project. It spreads awareness about **Human Metapneumovirus (HMPV)** and provides health tools such as symptom checking, nearby hospital lookup, and real-time news updates.

---

## 📱 App Features

- 🧬 **Splash Screen** – Smooth app launch experience.
- 🏠 **Dashboard** – Quick access to all features.
- 🔬 **Phylogeny** – Understand the viral lineage and evolution.
- 🩹 **Precautions** – Tips to stay safe from HMPV.
- 🩺 **Symptom Checker** – Input symptoms and assess risk level.
- 📰 **Real-Time News** – Health-related news via NewsAPI.
- 📚 **Virus Info** – Learn about HMPV in detail.
- 🚨 **Risk Assessment** – Get categorized risk levels (e.g., High Risk).
- ❓ **Myths** – Bust common misconceptions.
- ℹ️ **About App** – Overview of the app’s purpose.
- 🎖️ **Rating & Credits Menu** – Rate the app or view developers.
- ⭐ **Rate App** – Share your feedback and rating.

---

## 📷 App Screenshots

| Feature | Screenshot |
|--------|-------------|
| 1. Splash Screen | ![Splash Screen](images/splash_screen.jpg) |
| 2. Dashboard | ![Dashboard](images/Dashboard.jpg) |
| 3. Phylogeny | ![Phylogeny](images/phylogony.jpg) |
| 4. Precautions | ![Precautions](images/precautions.jpg) |
| 5. Symptom Checker | ![Symptom Checker](images/Symptom%20checker.jpg) |
| 6. News / Updates | ![News](images/Updates_Screen.jpg) |
| 7. Virus Info | ![Virus Info](images/Virus_Info.jpg) |
| 8. Risk Assessment Result | ![Risk](images/Hmpv%20risk%20assesment.jpg) |
| 9. Myths Debunked | ![Myths](images/Myths_screen.jpg) |
| 10. About App | ![About App](images/About%20App.jpg) |
| 11. Rating & Credits Menu | ![Rating Menu](images/Rating%20&%20Credits%20Menu.jpg) |
| 12. Rate Us Page | ![Rate App](images/Rating%20app.jpg) |

---

## 🚀 Technologies Used

- **Flutter** & **Dart**
- **Firebase**
- **Google Maps API**
- **NewsAPI**
- **Material Design Components**

---

## 🙌 Acknowledgements

- Developed as part of MCA Final Year Project  
- Special thanks to faculty and mentors at *Aditya College Of Engineering And Technology*

---
---
## 🐳 Docker Build (Containerized APK Build)

This project includes a `Dockerfile` that fully containerizes the Flutter build environment, so the Android APK can be built without installing Flutter, Android SDK, or Gradle locally — everything needed is bundled inside the Docker image.

### Why
Containerizing the build environment ensures a consistent, reproducible build regardless of the host machine, and is the foundation for automated CI/CD pipelines (see GitHub Actions workflow below).

### Prerequisites
- [Docker](https://docs.docker.com/get-docker/) installed on your machine

### Build the Docker image
\`\`\`bash
docker build -t hmpv-shield-builder .
\`\`\`
This pulls a Flutter SDK base image, installs project dependencies, and runs `flutter build apk --release` entirely inside the container.

### Extract the built APK
\`\`\`bash
docker create --name temp-container hmpv-shield-builder
docker cp temp-container:/app/build/app/outputs/flutter-apk/app-release.apk ./app-release.apk
docker rm temp-container
\`\`\`
The signed release APK (`app-release.apk`) will now be available in your project's root directory.

## 📬 Contact

**Developer:** Ram Kumar  
📧 Email: ramkumar20034@gmail.com 

---
