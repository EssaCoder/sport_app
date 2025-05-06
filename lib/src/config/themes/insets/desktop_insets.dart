part of '../app_theme.dart';

/// The desktop insets used in the app.
///
/// This class extends the [BaseInsets] mixin and implements the [AppInsets] mixin.
/// It provides the insets for the desktop app.
///
/// 
@immutable
class _DesktopInsets extends BaseInsets with _AppInsets {
  @override
  double get containerPadding => space6;

  @override
  double get tabButtonGap => space3;

  @override
  double get tabButtonInsideGap => space2;

  @override
  double get tabSectionsGap => space4;

  @override
  double get tabButtonVPadding => space2;

  @override
  double get tabButtonHPadding => space4;

  @override
  double get cardSmPadding => space6;

  @override
  double get cardSmGap => space6;

  @override
  double get cardMdGap => space3;

  @override
  double get sectionSmGap => space4;

  @override
  double get sectionMdGap => space6;

  @override
  double get sectionAndHeadingGap => space3;

  @override
  double get sectionHPadding => space6;

  @override
  double get sectionVPadding => space6;

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
  double get tableCellGap => space2;

  @override
  double get tableCellVPadding => space3;

  @override
  double get tableCellHPadding => space2;
}
