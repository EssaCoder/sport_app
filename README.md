# Sport App

## Overview

Sport App is a Flutter-based application designed with a clean architecture, supporting both Android
and iOS platforms. The app adheres to best practices for project structure, code consistency, and
maintainability, using Riverpod for state management and offering multiple themes and localization
options. The app collects information on sports over the years.

## To run the Sport App, ensure that you have the following software versions or newer:

- **Dart SDK Version 3.7.2 or greater.**
- **Flutter SDK Version 3.29.2 or greater.**

## Directory Structure

```
├── android/ - Contains files necessary for running the app on the Android platform.
├── assets/ - Includes all images, icons, fonts, and other assets used in the app.
├── ios/ - Holds files essential for running the app on the iOS platform.
├── lib/ - Contains the entry point and imports for your Dart code.
│   ├── main.dart - Serves as the entry point of the application.
|   ├── main_development.dart - Entry point for the development flavor.
│   ├── main_staging.dart - Entry point for the staging flavor.
│   ├── main_production.dart - Entry point for the production flavor.
│   ├── app.dart - Manages the primary application configuration.
│   └── src/ - Contains all source code files.
│       ├── config/ 
│       │   ├── constants/ - Stores static constant values used throughout the app.
│       │   ├── routes.dart - Defines routes and navigation configuration.
│       │   └── themes/ - Contains app themes and decoration classes.
|       │       ├── colors/ - Defines color schemes for the app.
│       │       ├── gradients/ - Defines gradient styles for the app.
│       │       ├── shadows/ - Defines shadow styles for the app.
│       │       ├── text_styles/ - Defines text styles for the app.
│       │       ├── corners/ - Defines corner radii for the app.
│       │       └── insets/ - Defines insets (padding/margin) for the app.
│       ├── core/ - Core utilities, base classes, and shared functionality.
│       │   ├── error/ - Handles error management.
│       │   ├── network/ - Manages network-related classes and utilities.
│       │   ├── utils/ - General utility classes and functions.
│       │   ├── widgets/ - Reusable UI components used across multiple features.
│       │   ├── extensions/ - Custom Dart extensions used throughout the app.
│       │   ├── storage/ - Manages local storage solutions (e.g., flutter secure storage).
│       │   ├── providers/ - Global or cross-feature Riverpod providers.
│       ├── └services/ - Contains services like API clients, local storage, etc.
│       │    └── notification/ - Manages push notifications and related services.
│       ├── features/ - Organizes features/modules.
│       │   ├── auth/ - Authentication-related code.
│       │   │   ├── data/ 
│       │   │   │   ├── models/ - Defines data models for authentication.
│       │   │   │   ├── repositories/ - Manages data access and services for authentication.
│       │   │   │   ├── api/ - Handles API calls and data sources for authentication.
│       │   │   ├── domain/ 
│       │   │   │   ├── entities/ - Core business entities related to authentication.
│       │   │   │   ├── usecases/ - Handles use cases and business logic for authentication.
│       │   │   ├── presentation/ 
│       │   │   │   ├── controllers/ - Contains Riverpod controllers for authentication.
│       │   │   │   ├── views/ - UI screens related to authentication.
│       │   ├── home/ - Home feature/module.
│       │   │   ├── data/ 
│       │   │   │   ├── models/ - Defines data models for the home feature.
│       │   │   │   ├── repositories/ - Manages data access for the home feature.
│       │   │   │   ├── api/ - Handles API calls and data sources for the home feature.
│       │   │   ├── domain/ 
│       │   │   │   ├── entities/ - Core business entities related to the home feature.
│       │   │   │   ├── usecases/ - Handles business logic for the home feature.
│       │   │   ├── presentation/ 
│       │   │   │   ├── controllers/ - Contains Riverpod controllers for the home feature.
│       │   │   │   ├── views/ - UI screens related to the home feature.
│       │   └── .../ - Additional features follow the same structure as auth/ and home/.
│       └── utils/ - Additional utility functions and classes (if not included in `core/utils/`).
├── test/ - Contains unit and widget tests.
├─── pubspec.yaml - Defines dependencies and project metadata.
├─── flutter_launcher_icons-development.yaml - Configuration for development flavor icons.
├─── flutter_launcher_icons-staging.yaml - Configuration for staging flavor icons.
├─── flutter_launcher_icons-production.yaml - Configuration for production flavor icons.
└─── flavorizr.yaml - Configuration file for managing different app flavors.

```

## Riverpod Files Generation

To generate Riverpod files, use:

```bash
flutter pub run build_runner watch -d
```

## Code Consistency and Readability

Ensure consistency and readability by formatting your code:

```bash
dart format .
To fix code issues, run:
```

# Code Fixes

If you need to fix code issues, you can use the following command:

```bash
dart fix --apply
```

## Remove Unused Imports

Remove unused imports with:

```bash
dart fix --apply --code=unused_import
```

## Localization Update

To update localization, run:

```bash
dart run easy_localization:generate -f keys -S assets/translations -o codegen_loader.g.dart
```

## Assets Update

Update assets by running:

```bash
dart run build_runner build --delete-conflicting-outputs
```

## Update Icons (flutter_icons)

To update app icons, use:

```bash
dart run flutter_launcher_icons -f flutter_launcher_icons-production.yaml
```

## Build apk

To build flavor apk, use:

```bash
flutter build apk --flavor development --target=lib/main_development.dart --debug
```

## Build apk

To build flavor apk, use:

```bash
flutter build apk --flavor production --target=lib/main_production.dart --debug
```

## Build apk

To build flavor apk, use:

```bash
flutter build appbundle --flavor production --target=lib/main_production.dart
```

```
## Run apk

To build flavor apk, use:

```bash
flutter run -d SM A546B --flavor production --target=lib/main_production.dart
```

## Run flavors

To run flavors, use:

```bash
flutter pub run flutter_flavorizr
```

## Live Templates

To streamline the development process, the following live templates can be added to Android Studio:

1. **Colors**
    - **Abbreviation**: `col`
    - **Template**: `context.colors.$value$`
    - **Description**: Inserts the color scheme from the theme.

2. **Text Styles**
    - **Abbreviation**: `txt`
    - **Template**: `context.textStyles.$value$`
    - **Description**: Inserts the base text styles from the theme.

3. **Gradients**
    - **Abbreviation**: `gra`
    - **Template**: `context.gradients.$value$`
    - **Description**: Inserts the base gradients from the theme.

4. **Corners**
    - **Abbreviation**: `cor`
    - **Template**: `context.corners.$value$`
    - **Description**: Inserts the base corners (radii) from the theme.

5. **Shadows**
    - **Abbreviation**: `sha`
    - **Template**: `context.shadows.$value$`
    - **Description**: Inserts the base shadows from the theme.

6. **Insets**
    - **Abbreviation**: `ins`
    - **Template**: `context.insets.$value$`
    - **Description**: Inserts the base insets (paddings) from the theme.

7. **Spaces**
    - **Abbreviation**: `spa`
    - **Template**: `context.spaces.$value$`
    - **Description**: Inserts the base spaces from the theme.





