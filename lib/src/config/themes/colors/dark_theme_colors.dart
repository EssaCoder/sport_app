part of '../app_theme.dart';

/// The dark theme colors used in the app.
///
/// This class extends the [BaseColors] mixin and implements the AppColors mixin.
/// It provides the colors for the dark theme.
///
/// 
@immutable
class _DarkThemeColors extends BaseColors with _AppColors {
  //Text
  @override
  Color get textDefault => white;

  @override
  Color get textWhite => neutral950;

  @override
  Color get textPrimary => primary500;

  @override
  Color get textParagraph => neutral300;

  @override
  Color get textOnActive => primary50;

  @override
  Color get textParagraphOnActive => primary50;

  @override
  Color get navItemDefault => neutral200;

  @override
  Color get navItemActive => primary500;

  //Background

  @override
  Color get backgroundPrimary => primary500;

  @override
  Color get backgroundWhite => neutral900;

  @override
  Color get backgroundWhiteV1 => neutral950;

  @override
  Color get backgroundSurface => neutral950;

  @override
  Color get backgroundBlack => white;

  @override
  Color get backgroundCard => neutral900;

  @override
  Color get backgroundCardDefault => neutral900;

  @override
  Color get backgroundCardActive => primary500;

  @override
  Color get backgroundCardSecondaryActive => neutral700;

  @override
  Color get backgroundNeutral300 => neutral600;

  //Icon
  @override
  Color get iconDefault => white;

  @override
  Color get iconDefault500 => neutral200;

  @override
  Color get iconDefault200 => neutral400;

//Border
  @override
  Color get borderPrimary => primary500;

  @override
  Color get borderWhite => neutral950;

  @override
  Color get borderNeutralPrimary => neutral800;

  @override
  Color get borderNeutralTertiary => neutral700;

  @override
  Color get borderNeutralTertiaryPrimary => neutral800;

  @override
  Color get borderNeutral300 => neutral700;
  @override
  Color get borderNeutral200 => neutral800;
  @override
  Color get whiteColor => white;

  @override
  Color get neutralBase700 => neutral700;

  //Form
  @override
  Color get fieldBackgroundDefault => neutral900;

  @override
  Color get fieldBorderDefault => neutral800;

  @override
  Color get fieldTextPlaceholder => neutral500;

  @override
  Color get radioInputBorder => neutral400;

  @override
  Color get radioInputContainerBorder => neutral800;

  @override
  Color get radioInputActiveBorder => primary500;

  @override
  Color get radioInputActiveBackground => primary500;

  @override
  Color get alphaPrimary15 => primary10;

  @override
  Color get alphaNeutral15 => neutralAlpha15;

  //SegmentedButton
  @override
  Color get segmentedButtonActiveBackground => primary500;

  @override
  Color get segmentedButtonActiveText => neutral950;

  @override
  Color get segmentedButtonBorder => neutral600;

  @override
  Color get base => neutral800;
  @override
  Color get highlight => neutral950;


}
