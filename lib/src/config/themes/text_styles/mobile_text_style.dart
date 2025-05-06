part of '../app_theme.dart';

/// The mobile text style used in the app.
///
/// This class extends the [BaseTextStyle] mixin and implements the [TextStyle] mixin.
/// It provides the text styles for the mobile app.
///
///
class _MobileTextStyle with _TextStyle {
  @override
  late final TextStyle displayLarge = createTextStyle(
    fontSize: 28.h,
    fontWeight: FontWeight.w700,
  );

  @override
  late final TextStyle displayMedium = createTextStyle(
    fontSize: 24.h,
    fontWeight: FontWeight.w700,
  );

  @override
  late final TextStyle displaySmall = createTextStyle(
    fontSize: 20.h,
    fontWeight: FontWeight.w700,
  );

  @override
  late final TextStyle headlineLarge = createTextStyle(
    fontSize: 18.h,
    fontWeight: FontWeight.w700,
  );

  @override
  late final TextStyle headlineMedium = createTextStyle(
    fontSize: 16.h,
    fontWeight: FontWeight.w400,
  );

  @override
  late final TextStyle headlineSmall = createTextStyle(
    fontSize: 16.h,
    fontWeight: FontWeight.w500,
  );

  @override
  late final TextStyle titleLarge = createTextStyle(
    fontSize: 16.h,
    fontWeight: FontWeight.w700,
  );

  @override
  late final TextStyle titleMedium = createTextStyle(
    fontSize: 14.h,
    fontWeight: FontWeight.w400,
  );

  @override
  late final TextStyle titleSmall = createTextStyle(
    fontSize: 14.h,
    fontWeight: FontWeight.w500,
  );
  @override
  late final TextStyle labelLarge = createTextStyle(
    fontSize: 14.h,
    fontWeight: FontWeight.w700,
  );

  @override
  late final TextStyle labelMedium = createTextStyle(
    fontSize: 12.h,
    fontWeight: FontWeight.w400,
  );

  @override
  late final TextStyle labelSmall = createTextStyle(
    fontSize: 12.h,
    fontWeight: FontWeight.w500,
  );
  @override
  late final TextStyle bodyLarge = createTextStyle(
    fontSize: 12.h,
    fontWeight: FontWeight.w700,
  );

  @override
  late final TextStyle bodyXlMedium = createTextStyle(
    fontSize: 18.h,
    fontWeight: FontWeight.w500,
  );

  @override
  late final TextStyle bodyXlLarge = createTextStyle(
    fontSize: 18.h,
    fontWeight: FontWeight.w700,
  );

  @override
  late final TextStyle bodySmall = createTextStyle(
    //TODO: Replace font size
    fontSize: 1.h,
    fontWeight: FontWeight.bold,
  );
}
