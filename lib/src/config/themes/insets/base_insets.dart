part of '../app_theme.dart';

/// The base insets used in the app.
///
/// This abstract class is used to define the base insets used in the app.
/// It is used in design system to define the insets of the app.
///
///
@immutable
abstract class BaseInsets {
  //Container

  /// In mobile case: `16`.
  double get containerPadding;

  //Tab

  /// In mobile case: `8`.
  double get tabButtonGap;

  /// In mobile case: `8`.
  double get tabButtonInsideGap;

  /// In mobile case: `12`.
  double get tabSectionsGap;

  /// In mobile case: `8`.
  double get tabButtonVPadding;

  /// In mobile case: `16`.
  double get tabButtonHPadding;

  //Card

  /// In mobile case: `16`.
  double get cardSmPadding;

  /// In mobile case: `8`.
  double get cardSmGap;

  /// In mobile case: `12`.
  double get cardMdGap;

  //Section

  /// In mobile case: `16`.
  double get sectionSmGap;

  /// In mobile case: `24`.
  double get sectionMdGap;

  /// In mobile case: `12`.
  double get sectionAndHeadingGap;

  /// In mobile case: `4`.
  double get sectionHPadding;

  /// In mobile case: `4`.
  double get sectionVPadding;

  //Global

  /// In mobile case: `0`.
  double get spacingNone;

  /// In mobile case: `2`.
  double get spacingXxs;

  /// In mobile case: `4`.
  double get spacingXs;

  /// In mobile case: `6`.
  double get spacingSm;

  /// In mobile case: `8`.
  double get spacingMd;

  /// In mobile case: `12`.
  double get spacingLg;

  /// In mobile case: `16`.
  double get spacingXl;

  /// In mobile case: `20`.
  double get spacing2xl;

  /// In mobile case: `24`.
  double get spacing3xl;

  /// In mobile case: `32`.
  double get spacing4xl;

  //Table
  /// In mobile case: `4`.
  double get tableCellGap;

  /// In mobile case: `8`.
  double get tableCellVPadding;

  /// In mobile case: `8`.
  double get tableCellHPadding;
}
