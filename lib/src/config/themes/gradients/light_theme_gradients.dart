part of '../app_theme.dart';

/// The light theme gradients used in the app.
///
/// This class extends the [BaseGradients] mixin and implements the AppGradients mixin.
/// It provides the gradients for the light theme.
///
/// 
@immutable
class _LightThemeGradients extends BaseGradients {
  @override
  // TODO: Confirm it in the design system.
  final LinearGradient primary = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.black.withAlpha(0), Colors.black.withAlpha(85)],
  );
  @override
  // TODO: implement accentGradient
  final LinearGradient accent = LinearGradient(colors: []);

  @override
  // TODO: implement backgroundGradient
  final LinearGradient background = LinearGradient(colors: []);

  @override
  // TODO: implement buttonGradient
  final LinearGradient button = LinearGradient(colors: []);

  @override
  // TODO: implement cardGradient
  final LinearGradient card = LinearGradient(colors: []);

  @override
  // TODO: implement dividerGradient
  final LinearGradient divider = LinearGradient(colors: []);

  @override
  // TODO: implement errorGradient
  final LinearGradient error = LinearGradient(colors: []);

  @override
  // TODO: implement footerGradient
  final LinearGradient footer = LinearGradient(colors: []);

  @override
  // TODO: implement headerGradient
  final LinearGradient header = LinearGradient(colors: []);

  @override
  // TODO: implement highlightGradient
  final LinearGradient highlight = LinearGradient(colors: []);

  @override
  // TODO: implement infoGradient
  final LinearGradient info = LinearGradient(colors: []);

  @override
  // TODO: implement modalGradient
  final LinearGradient modal = LinearGradient(colors: []);

  @override
  // TODO: implement overlayGradient
  final LinearGradient overlay = LinearGradient(colors: []);

  @override
  // TODO: implement secondaryGradient
  final LinearGradient secondary = LinearGradient(colors: []);

  @override
  // TODO: implement shadowGradient
  final LinearGradient shadow = LinearGradient(colors: []);

  @override
  // TODO: implement splashGradient
  final LinearGradient splash = LinearGradient(colors: []);

  @override
  // TODO: implement successGradient
  final LinearGradient success = LinearGradient(colors: []);

  @override
  // TODO: implement tertiaryGradient
  final LinearGradient tertiary = LinearGradient(colors: []);

  @override
  // TODO: implement textGradient
  final LinearGradient text = LinearGradient(colors: []);

  @override
  // TODO: implement warningGradient
  final LinearGradient warning = LinearGradient(colors: []);
}
