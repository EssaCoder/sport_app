part of 'extensions.dart';

/// The extension on the [AppThemeMode] enum.
///
/// This extension is used to get the theme mode based on the current theme mode.
/// It is used to get the theme mode based on the current theme mode.
///
/// 
extension ThemeModeExtensions on AppThemeMode {
  T mode<T>(T light, T dark) {
    if (this == AppThemeMode.dark) {
      return dark;
    }
    return light;
  }
}
