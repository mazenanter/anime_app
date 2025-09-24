# Anime App 🎬

A Flutter mobile application that allows anime enthusiasts to explore, browse, and get detailed information about their favorite anime series and movies.  
This project demonstrates **Clean Architecture**, **Clean Code**, and modular folder organization for maintainable and scalable Flutter apps.

Unlike a typical demo app, this project highlights **separation of concerns**, **reactive UI**, and **modern Flutter best practices**.

---

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

---

## 🏛 Design & Architecture

### 1. Clean Architecture
The project follows **Clean Architecture** principles with clear separation of layers:

- **Data Layer:** Handles API calls, local storage, and models.
- **Domain Layer:** Contains entities, use cases, and business logic.
- **Presentation Layer:** Screens, widgets, and Cubits for state management.

This ensures **scalability** and **maintainability**.

### 2. State Management
- Uses **Cubit** from **Bloc** for reactive state updates.
- Localized language support using a Cubit for changing languages dynamically.
- UI listens to state changes and updates instantly without unnecessary rebuilds.

### 3. Folder Organization
lib/
├─ core/           # Networking, theme, helpers, and widgets
├─ features/
│    └─ home/
│        ├─ data/          # Models & Repos & data source
│        ├─ domain/        # Entities & use cases & repo
│        └─ presentation/  # Screens, widgets, and Cubits
└─ main.dart
---

## 🧩 Clean Code Principles in Action

- **Single Responsibility:** Each class has a single purpose. Widgets focus on UI, Cubits on state, and models on data structure.  
- **Separation of Concerns:** Presentation, domain, and data layers are fully decoupled.  
- **Reusable Widgets:** Common UI components like `AnimeInfoItem`, `CoverAndLogo`, and `WatchAndPreviewButtons` are modular and reusable.  
- **Testable Code:** Business logic and use cases are separated from UI for easier testing.

---
## Demo Video Of UI

https://drive.google.com/file/d/1VSMiFPlXsc6Ri3sxxFnsfhsjkafPWZbc/view?usp=drive_link

## 🚀 How to Run

```bash
# Clone the repository
git clone https://github.com/mazenanter/anime_app.git
cd anime_app

# Install dependencies
flutter pub get

# Run the app on an emulator or real device
flutter run
