part of '../app_theme.dart';

/// The mobile insets used in the app.
///
/// This class extends the [BaseInsets] mixin and implements the AppInsets mixin.
/// It provides the insets for the mobile app.
///
///
@immutable
class _MobileInsets extends BaseInsets with _AppInsets {
  @override
  double get containerPadding => space4;

  @override
  double get tabButtonGap => space2;

  @override
  double get tabButtonInsideGap => space2;

  @override
  double get tabSectionsGap => space3;

  @override
  double get tabButtonVPadding => space2;

  @override
  double get tabButtonHPadding => space4;

  @override
  double get cardSmPadding => space4;

  @override
  double get cardSmGap => space2;

  @override
  double get cardMdGap => space3;

  @override
  double get sectionSmGap => space4;

  @override
  double get sectionMdGap => space6;

  @override
  double get sectionAndHeadingGap => space3;

  @override
  double get sectionHPadding => space4;

  @override
  double get sectionVPadding => space4;

  @override
  double get spacingNone => space0;

  @override
  double get spacingXxs => space0_5;

  @override
  double get spacingXs => space1;

  @override
  double get spacingSm => space1_5;

  @override
  double get spacingMd => space2;

  @override
  double get spacingLg => space3;

  @override
  double get spacingXl => space4;

  @override
  double get spacing2xl => space5;

  @override
  double get spacing3xl => space6;

  @override
  double get spacing4xl => space8;

  @override
  double get tableCellGap => space1;

  @override
  double get tableCellVPadding => space2;

  @override
  double get tableCellHPadding => space2;
}
