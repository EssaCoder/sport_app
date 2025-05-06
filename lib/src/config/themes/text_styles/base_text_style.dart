part of '../app_theme.dart';

/// The base text style used in the app.
///
/// This mixin contains all the base text styles used in the app.
/// It is used to avoid repeating the same text style in the app.
///
///
mixin _TextStyle implements BaseTextStyle {
  TextStyle createTextStyle({
    required double fontSize,
    FontWeight? fontWeight,
  }) {
    return TextStyle(
      fontSize: fontSize.h,
      fontWeight: fontWeight,
      fontFamily: FontFamily.iBMPlexSans,
      letterSpacing: 0,
    );
  }
}

/// Abstract class defining various text styles.
abstract class BaseTextStyle {
  /// Font size for large display text.
  ///
  /// In mobile case: Typically used for main titles or prominent headings.
  /// Example: `fontSize: 28`
  TextStyle get displayLarge;

  /// Font size for medium display text.
  ///
  /// In mobile case: Often used for secondary titles or large subtitles.
  /// Example: `fontSize: 34`
  TextStyle get displayMedium;

  /// Font size for small display text.
  ///
  /// In mobile case: Suitable for smaller headings or emphasis on text.
  /// Example: `fontSize: 28`
  TextStyle get displaySmall;

  /// Font size for large headlines.
  ///
  /// In mobile case: Commonly used for major section headings.
  /// Example: `fontSize: 25`
  TextStyle get headlineLarge;

  /// Font size for medium headlines.
  ///
  /// In mobile case: Typically used for sub-headings within sections.
  /// Example: `fontSize: 16`
  TextStyle get headlineMedium;

  /// Font size for small headlines.
  ///
  /// In mobile case: Used for less prominent headings.
  /// Example: `fontSize: 16`
  TextStyle get headlineSmall;

  /// Font size for large titles.
  ///
  /// In mobile case: Often used for prominent titles in lists or cards.
  /// Example: `fontSize: 16`
  TextStyle get titleLarge;

  /// Font size for medium titles.
  ///
  /// In mobile case: Suitable for moderate emphasis titles.
  /// Example: `fontSize: 14`
  TextStyle get titleMedium;

  /// Font size for small titles.
  ///
  /// In mobile case: Typically used for smaller titles or labels.
  /// Example: `fontSize: 14`
  TextStyle get titleSmall;

  /// Font size for large labels.
  ///
  /// In mobile case: Commonly used for important labels in forms or buttons.
  /// Example: `fontSize: 13`
  TextStyle get labelLarge;

  /// Font size for medium labels.
  ///
  /// In mobile case: Often used for standard labels in forms or interfaces.
  /// Example: `fontSize: 12`
  TextStyle get labelMedium;

  /// Font size for small labels.
  ///
  /// In mobile case: Typically used for less significant labels.
  /// Example: `fontSize: 10`
  TextStyle get labelSmall;

  /// Font size for large body text.
  ///
  /// In mobile case: Suitable for main content text.
  /// Example: `fontSize: 12`
  TextStyle get bodyLarge;

  /// Font size for medium body text.
  ///
  /// In mobile case: Used for regular content that needs emphasis.
  /// Example: `fontSize: 18`
  TextStyle get bodyXlMedium;

  /// Font size for medium body text.
  ///
  /// In mobile case: Used for regular content that needs emphasis.
  /// Example: `fontSize: 18`
  TextStyle get bodyXlLarge;

  /// Font size for small body text.
  ///
  /// In mobile case: Used for less significant body content or captions.
  /// Example: `fontSize: 1`
  TextStyle get bodySmall;
}
