# UsersApp - iOS Clean Architecture Demo
![Swift](https://img.shields.io/badge/Swift-5.0-orange.svg)
![Platform](https://img.shields.io/badge/Platform-iOS-blue.svg)
![License](https://img.shields.io/badge/License-MIT-green.svg)

## 📱 Overview
UsersApp is an iOS application built following Clean Architecture principles and MVVM pattern. The app demonstrates modern iOS development practices with a clear separation of concerns through its layered architecture.

## 🚀 Features
- Clean Architecture implementation
- Domain-driven design
- Network data fetching
- Unit and UI testing support
- Dependency injection

## 🛠️ Technology Stack
- Swift 5.0+
- SwiftUI
- XCTest for testing
- Clean Architecture
- MVVM Pattern
- Dependency Injection

## 📋 Prerequisites
- macOS Ventura or later
- Xcode 14.0+
- iOS 16.0+ deployment target

## ⚙️ Installation & Setup
1. Clone the repository:
```bash
git clone https://github.com/yourusername/UsersApp.git
```

2. Open the project in Xcode:
```bash
cd UsersApp
open UsersApp.xcodeproj
```

3. Build and run the project using Xcode's simulator

## 🏗️ Project Structure
```
UsersApp/
├── Data/
│   └── Network/          # Network layer implementation
├── Di/                   # Dependency injection container
├── Domain/
│   ├── Models/          # Domain models
│   ├── Repositories/    # Repository interfaces
│   └── UseCases/       # Business logic use cases
├── Presentation/
│   ├── ViewModels/     # MVVM ViewModels
│   └── Views/          # SwiftUI Views
└── Resources/
    └── Assets.xcassets  # App assets
```

## 🔧 Configuration
The project uses the standard Xcode configuration with Debug and Release schemes. No additional configuration is required to run the application.

## 📱 Running the Application
1. Open `UsersApp.xcodeproj` in Xcode
2. Select your target device or simulator
3. Press `Cmd + R` to build and run the application

## 🧪 Testing
The project includes both unit tests and UI tests:

- Run Unit Tests: `Cmd + U`
- Test files location:
  - `UsersAppTests/` - Unit tests
  - `UsersAppUITests/` - UI tests

## 🏛️ Architecture
The application follows Clean Architecture principles with three main layers:
- **Presentation Layer**: SwiftUI views and ViewModels
- **Domain Layer**: Business logic and entities
- **Data Layer**: External data sources and repositories

## 🤝 Contributing
1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License
This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## 📸 Screenshots
[Screenshots to be added]

---

**Note**: This application is structured using Clean Architecture principles, making it highly maintainable and testable. The separation of concerns is clearly visible through the project structure, with distinct layers for data, domain, and presentation logic.
