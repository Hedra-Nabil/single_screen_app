# 📝 Text Notes

A beautiful, clean-architecture Flutter app for capturing your thoughts.

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

## 📱 Screenshots

<p align="center">
  <img src="screenshots/screenshot1.png" width="300" alt="Text Notes App"/>
</p>

## ✨ Features

- 📝 Save and display text notes
- 🔢 Character counter (max 500 characters)
- 🎨 Beautiful purple gradient UI
- 🧹 Clear button to reset
- 🏗️ Clean Architecture (Domain/Data/Presentation)

## 🏗️ Architecture

This project follows **Clean Architecture** principles:

```
lib/
├── main.dart
└── src/
    ├── domain/
    │   ├── entities/
    │   │   └── note.dart
    │   ├── repositories/
    │   │   └── note_repository.dart
    │   └── usecases/
    │       ├── get_note.dart
    │       └── save_note.dart
    ├── data/
    │   ├── datasources/
    │   │   └── in_memory_note_datasource.dart
    │   └── repositories/
    │       └── note_repository_impl.dart
    └── presentation/
        └── notifier/
            └── note_notifier.dart
```

## 📥 Download

Get the latest release:

[![Download APK](https://img.shields.io/badge/Download-APK-brightgreen?style=for-the-badge&logo=android)](https://github.com/Hedra-Nabil/single_screen_app/releases/latest)

Or visit the [Releases Page](https://github.com/Hedra-Nabil/single_screen_app/releases)

## 🚀 Getting Started

### Prerequisites

- Flutter SDK ^3.10.3
- Dart SDK ^3.10.3

### Installation

1. Clone the repository
```bash
git clone https://github.com/Hedra-Nabil/single_screen_app.git
```

2. Navigate to project directory
```bash
cd single_screen_app
```

3. Install dependencies
```bash
flutter pub get
```

4. Run the app
```bash
flutter run
```

## 🛠️ Build

To build the release APK:

```bash
flutter build apk --release
```

The APK will be generated at `build/app/outputs/flutter-apk/app-release.apk`

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 👨‍💻 Author

**Hedra Nabil**

- GitHub: [@Hedra-Nabil](https://github.com/Hedra-Nabil)

---

<p align="center">Made with ❤️ using Flutter</p>
