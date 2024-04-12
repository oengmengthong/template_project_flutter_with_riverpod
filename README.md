# template_project_flutter_with_riverpod

- lib/
  - app/
    - app.dart (Main Application Entry Point)
    - router.gr.dart (AutoRoute Generated Router)
  - features/
    - product/
      - view/
        - product_screen.dart
        - widgets/
          - product_widget.dart
      - viewmodel/
        - product_view_model.dart
      - model/
        - product_model.dart
      - service/
        - product_service.dart
    - profile/
      - view/
        - profile_screen.dart
        - widgets/
          - profile_widget.dart
      - viewmodel/
        - profile_view_model.dart
      - model/
        - profile_model.dart
      - service/
        - profile_service.dart
  - shared/
    - widgets/
      - shared_button.dart
      - shared_text_field.dart
  - data/
    - repositories/
      - product_repository.dart
      - profile_repository.dart
    - datasources/
      - remote/
        - product_remote_data_source.dart
        - profile_remote_data_source.dart
      - local/
        - product_local_data_source.dart
        - profile_local_data_source.dart
  - utils/
    - constants.dart
    - helpers.dart


Explanation:
App Folder:

locator.dart: Contains the setup for dependency injection using GetIt or another DI package.
app.dart: Main application entry point where you initialize Riverpod providers and setup AutoRoute.
router.gr.dart: Generated router file from AutoRoute.
Features Folder:

Each feature has its own folder containing sub-folders for views, view models, models, and services.
Views: Screens and UI components related to the feature.
ViewModels: Classes responsible for handling business logic and interacting with providers.
Models: Data models specific to the feature.
Services: Classes responsible for handling API calls or other external interactions.
Shared Folder:

Contains reusable widgets that are shared across different features.
Data Layer:

repositories: Classes that abstract data sources and provide a clean API for the view models.
datasources: Contains sub-folders for remote and local data sources. Helps in separating API calls from local database operations.
Utils Folder:

Contains utility classes, constants, and helper functions used throughout the project.
