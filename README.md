# EduPortfolio

EduPortfolio is an all-in-one platform for students to track their educational journey, manage projects, and showcase their achievements. With easy access to saved work, shared projects, and earned achievements, EduPortfolio empowers students to visualize their learning path and accomplishments.

## Table of Contents
- [Features](#features)
- [Screenshots](#screenshots)
- [Getting Started](#getting-started)
- [Installation](#installation)
- [App Architecture](#app-architecture)
- [Dependencies](#dependencies)
- [Contributing](#contributing)
- [License](#license)

## Features
- **Project Management**: Track and manage educational projects with ease.
- **Achievements Showcase**: Earn and display badges for achievements.
- **Saved and Shared Projects**: Save and share projects with peers for collaboration and feedback.
- **Responsive Design**: Optimized for mobile devices with a focus on a clean, intuitive UI.
- **Tab Navigation**: Navigate seamlessly between Projects, Saved Work, Shared Items, and Achievements.

## Screenshots
(Include screenshots of the app here when they are available to showcase the UI and functionality)
<img src="/screenshots/01.gif" alt="Animated GIF" width="200"/>  <img src="/screenshots/1.jpg" alt="Home Screen" width="200"/>
<img src="/screenshots/2.jpg" alt="Portfolio Screen" width="200"/>  <img src="/screenshots/3.jpg" alt="Search Screen" width="200"/> 

<img src="/screenshots/4.jpg" alt="Search Screen" width="200"/>

## Getting Started
This project is a starting point for a Flutter application using the MVVM (Model-View-ViewModel) architecture pattern with Provider for state management.

### Prerequisites
Ensure you have the following installed:
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (version 3.x or above)
- [Dart SDK](https://dart.dev/get-dart)
- IDE (Visual Studio Code, Android Studio, etc.) with Flutter and Dart plugins

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/eduportfolio.git

2. Navigate to the project directory:
   ```bash
   cd eduportfolio

3. Install the dependencies:
   ```bash
   flutter pub get
4. Run the app:
   ```bash 
   flutter run

### App Architecture

The app follows the MVVM architecture pattern using the Provider package for state management. The directory structure is as follows:
```bash 
lib/
│
├── main.dart
├── models/
│   └── project_model.dart
├── providers/
│   ├── portfolio_provider.dart
│   └── main_provider.dart
├── views/
│   ├── bottom_navigation.dart
│   ├── filter_button.dart
│   ├── home_screen.dart
│   ├── input_screen.dart
│   ├── main_page.dart
│   ├── portfolio_screen.dart
│   ├── profile_screen.dart
│   ├── project_tab.dart
│   ├── project_tile.dart
│   └── splash_screen.dart
├── widgets/
│   ├── custom_appbar.dart
│   ├── search_bar.dart
│   └── tab_selector.dart
├── theme/
│   └── app_colors.dart
├── res/
│   ├── assets_res.dart
│   └── font_res.dart
└── models/
    └── project_model.dart

```

### Explanation

- **Models**: Contains data classes for the app (e.g., `Project`).

- **Providers**: Manages app state and business logic using `Provider`. Includes:
   - `portfolio_provider.dart` - Manages project-related data.
   - `main_provider.dart` - Manages the state of the app's main flow (like tab selection).

- **Views**: Contains UI components and screens such as:
   - `portfolio_screen.dart`
   - `project_tile.dart`
   - `bottom_navigation.dart`

- **Widgets**: Custom reusable widgets such as:
   - `custom_appbar.dart`
   - `search_bar.dart`
   - `tab_selector.dart`

- **Theme**: Contains app-wide color schemes and themes in `app_colors.dart`.

- **Resources (res)**: Stores static data like `assets_res.dart` and fonts configuration in `font_res.dart`.

### Dependencies

The app uses the following dependencies:

- `flutter`: The core Flutter SDK.
- `provider`: State management solution for Flutter.
- `flutter_screenutil`: For responsive design based on screen size.
- `flutter_svg`: For handling and rendering SVG images in Flutter.
- `flutter_launcher_icons`: To set and manage launcher icons for both iOS and Android.

Add these dependencies in your `pubspec.yaml` file and run:

```bash
flutter pub get

### Contributing
We welcome contributions to EduPortfolio! To contribute:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes and commit (`git commit -m 'Add new feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Create a Pull Request.

Please follow the project's coding style and conventions.

### License
EduPortfolio is open-source and available under the MIT License.

---

Made with Flutter ❤️
