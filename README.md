# Anime App 🎬

A Flutter mobile application that allows anime enthusiasts to explore, browse, and get detailed information about their favorite anime series and movies.  
This project demonstrates **Clean Architecture**, **Clean Code**, and modular folder organization for maintainable and scalable Flutter apps. Unlike a typical demo app, this project highlights **separation of concerns**, **reactive UI**, and **modern Flutter best practices**.

## ✨ Core Features

### Browse Anime
- View a list of trending and popular anime.
- Filter anime by genre, rating, and status.
- Pull-to-refresh to get the latest updates.

### Anime Details
- See detailed info including description, cover image, episodes, and ratings.
- View categories and classifications.
- Highlights special indicators such as "fire" for popular anime.

### Interactive UI
- Smooth scrolling animations and hero transitions between screens.
- Floating buttons for quick actions like "Watch Now" or "Preview".
- Responsive design across different screen sizes.

## 🏛 Design & Architecture

The project follows **Clean Architecture** principles with clear separation of layers:

- **Data Layer:** Handles API calls, local storage, and models.
- **Domain Layer:** Contains entities, use cases, and business logic.
- **Presentation Layer:** Screens, widgets, and Cubits for state management.

This ensures **scalability** and **maintainability**.  
State management is done using **Cubit** from **Bloc** for reactive updates. UI listens to state changes and updates instantly. Localized language support is included with a Cubit for changing languages dynamically.

Folder Organization:

```text
lib/
├─ core/           # Networking, theme, helpers, and widgets
├─ features/
│    └─ home/
│        ├─ data/          # Models & Repos & data source
│        ├─ domain/        # Entities & use cases & repo
│        └─ presentation/  # Screens, widgets, and Cubits
└─ main.dart
```
# Demo Video Of UI
https://drive.google.com/file/d/1VSMiFPlXsc6Ri3sxxFnsfhsjkafPWZbc/view?usp=drive_link

# Clone the repository
git clone https://github.com/mazenanter/anime_app.git
cd anime_app

# Install dependencies
flutter pub get

# Run the app on an emulator or real device
flutter run
