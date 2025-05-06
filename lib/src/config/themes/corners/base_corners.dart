part of '../app_theme.dart';

/// The base corners used in the app.
///
/// This abstract class is used to define the base corners used in the app.
/// It is used in design system to define the corners of the app.
///
///
@immutable
abstract class BaseCorners {
  /// Small radius.
  ///
  /// In mobile case: `Radius.circular(4)`.
  Radius get rs;

  /// Medium radius.
  ///
  /// In mobile case: `Radius.circular(8)`.
  Radius get rm;

  /// Large radius.
  ///
  /// In mobile case: `Radius.circular(16)`.
  Radius get rl;

  /// Radius used for buttons.
  ///
  /// In mobile case: `Radius.circular(12)`.
  Radius get rb;

  /// Radius used for card elements.
  ///
  /// In mobile case: `Radius.circular(15)`.
  Radius get rc;

  /// Radius for a full circle (360 degrees).
  ///
  /// In mobile case: `Radius.circular(360)`.
  Radius get rc360;

  /// Radius for a full circle (360 degrees).
  ///
  /// In mobile case: `Radius.circular(360)`.
  Radius get rx;

  /// Big radius.
  ///
  /// In mobile case: `Radius.circular(32)`.
  Radius get rbg;
}
