# MealApp

MealApp designed to help users explore meal categories, view recipes, and manage their favorite meals with ease.

---

## Features

### Core Features:
- **Meal Categories**: Browse a variety of meal categories with a visually appealing grid layout.
- **Filtered Meals**: Apply filters to customize the list of available meals based on dietary preferences.
- **Favorites Management**: Mark meals as favorites and access them quickly in a dedicated section.
- **Navigation Drawer**: Easily switch between screens using a custom navigation drawer.
- **Responsive Design**: Ensures a seamless experience across different screen sizes.

### Additional Features:
- **Animations**: Smooth animations for a modern and engaging user experience.
- **Theming**: Dark-themed design with customizable fonts using Google Fonts.
- **State Management**: Powered by Riverpod for efficient and reactive state management.
- **Error Handling**: Graceful handling of errors with fallback UI components.

---

## How It Works

### Application Flow:
1. **Initialization**: The app initializes Riverpod providers for state management and sets up the main theme.
2. **Meal Discovery**:
    - **Categories**: Displays a grid of meal categories with animations.
    - **Filtered Meals**: Dynamically updates the list of meals based on user-defined filters.
3. **Favorites**: Allows users to mark meals as favorites and view them in a separate tab.
4. **Navigation**: Users can navigate between categories, favorites, and filter settings using the bottom navigation bar and drawer.

### Architecture:
The application is built using a **Provider-based architecture**, ensuring a clean separation of concerns:
1. **Presentation Layer**:
    - Contains UI components (e.g., `TabsScreen`, `CategoriesScreen`).
    - Uses Riverpod for managing state and reacting to changes.
2. **Domain Layer**:
    - Contains business logic and providers (e.g., `favoritesProvider`, `filtersProvider`).
3. **Data Layer**:
    - Handles static data (e.g., `dummy_data.dart`) and manages filtering logic.

This architecture ensures scalability and maintainability.

---

## Folder Structure

The project follows a feature-first folder structure:

```
lib/
├── data/                
├── models/                
├── provider/              
├── screens/               
├── widgets/               
├── main.dart              
```

---

## Code Highlights

### Riverpod State Management:
- **Riverpod** is used for managing application state, ensuring reactive and efficient updates.
- Example: The `navBarProvider` manages the state of the bottom navigation bar.

### Animation Integration:
- Smooth animations are implemented using `AnimationController` and `AnimatedBuilder`.
- Example: The `CategoriesScreen` uses animations to create a sliding effect for the grid.

### Custom Widgets:
- Reusable widgets like `CategoryGridItem` and `MainDrawer` ensure a consistent and modular UI.

---

## Technologies Used

- **Flutter**: For building the cross-platform mobile application.
- **Dart**: The programming language used for Flutter development.
- **Riverpod**: For state management.
- **Google Fonts**: For custom typography.
- **Material Design**: For a modern and intuitive user interface.
- **Animations**: For enhancing user experience with smooth transitions.