part of '../app_theme.dart';

/// The base shadows used in the app.
///
/// This abstract class is used to define the base shadows used in the app.
/// It is used in design system to define the shadows of the app.
///
/// 
abstract class BaseShadows {
  BoxShadow get small;

  BoxShadow get medium;

  BoxShadow get large;
}
