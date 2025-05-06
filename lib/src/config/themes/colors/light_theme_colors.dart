part of '../app_theme.dart';

/// The light theme colors used in the app.
///
/// This class extends the [BaseColors] mixin and implements the AppColors mixin.
/// It provides the colors for the light theme.
///
///
@immutable
class _LightThemeColors extends BaseColors with _AppColors {
  //Text
  @override
  Color get textDefault => neutral950;

  @override
  Color get textWhite => white;

  @override
  Color get textPrimary => primary600;

  @override
  Color get textParagraph => neutral700;

  @override
  Color get textOnActive => white;

  @override
  Color get textParagraphOnActive => primary50;

  @override
  Color get navItemDefault => neutral200;

  @override
  Color get navItemActive => primary600;

  //Background

  @override
  Color get backgroundPrimary => primary500;

  @override
  Color get backgroundWhite => white;

  @override
  Color get backgroundWhiteV1 => white;

  @override
  Color get backgroundSurface => neutral50;

  @override
  Color get backgroundBlack => neutral950;

  @override
  Color get backgroundCard => white;

  @override
  Color get backgroundCardDefault => neutral100;

  @override
  Color get backgroundCardActive => primary500;

  @override
  Color get backgroundCardSecondaryActive => neutral200;

  @override
  Color get backgroundNeutral300 => neutral300;

  @override
  Color get borderNeutral200 => neutral200;

  //Icon
  @override
  Color get iconDefault => neutral950;

  @override
  Color get iconDefault500 => neutral500;

  @override
  Color get iconDefault200 => neutral200;

  //Border
  @override
  Color get borderPrimary => primary500;

  @override
  Color get borderWhite => white;

  @override
  Color get borderNeutralPrimary => neutral50;

  @override
  Color get borderNeutralTertiaryPrimary => neutral50;

  @override
  Color get borderNeutralTertiary => neutral100;

  @override
  Color get borderNeutral300 => neutral300;

  @override
  Color get whiteColor => white;

  @override
  Color get neutralBase700 => neutral700;

  //Form
  @override
  Color get fieldBackgroundDefault => white;

  @override
  Color get fieldBorderDefault => neutral100;

  @override
  Color get fieldTextPlaceholder => neutral400;

  @override
  Color get radioInputBorder => neutral200;

  @override
  Color get radioInputContainerBorder => neutral100;

  @override
  Color get radioInputActiveBorder => primary500;

  @override
  Color get radioInputActiveBackground => primary500;

  @override
  Color get alphaPrimary15 => primary10;

  @override
  Color get alphaNeutral15 => neutral15;

  //SegmentedButton
  @override
  Color get segmentedButtonActiveBackground => primary500;

  @override
  Color get segmentedButtonActiveText => neutral950;

  @override
  Color get segmentedButtonBorder => neutral300;

  @override
  Color get base => neutral50;

  @override
  Color get highlight => neutral200;
}
