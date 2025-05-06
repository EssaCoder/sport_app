part of '../app_theme.dart';

/// The base gradients used in the app.
///
/// This abstract class is used to define the base gradients used in the app.
/// It is used in design system to define the gradients of the app.
///
///
abstract class BaseGradients {
  LinearGradient get primary;

  LinearGradient get secondary;

  LinearGradient get tertiary;

  LinearGradient get accent;

  LinearGradient get background;

  LinearGradient get overlay;

  LinearGradient get highlight;

  LinearGradient get shadow;

  LinearGradient get success;

  LinearGradient get error;

  LinearGradient get warning;

  LinearGradient get info;

  LinearGradient get card;

  LinearGradient get button;

  LinearGradient get header;

  LinearGradient get footer;

  LinearGradient get text;

  LinearGradient get modal;

  LinearGradient get divider;

  LinearGradient get splash;
}
