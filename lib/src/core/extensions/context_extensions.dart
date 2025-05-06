part of 'extensions.dart';

/// The extension on the [BuildContext] class.
///
/// This extension is used to get the size of the screen,
/// the view insets of the screen,
/// the height and width of the screen,
/// the height of the bottom system padding,
/// and all design system properties.
///
///
extension ContextExtensions on BuildContext {
  /// Retrieves the size of the screen using [MediaQuery.of(context).size].
  Size get mediaQuerySize => MediaQuery.sizeOf(this);

  /// Retrieves the view insets of the screen
  /// using [MediaQuery.of(context).viewInsets].
  EdgeInsets get viewInsets => MediaQuery.viewInsetsOf(this);

  /// The height of the screen.
  double get height => mediaQuerySize.height;

  /// The width of the screen.
  double get width => mediaQuerySize.width;

  /// The height of the bottom system padding, adjusted for pixel ratio.
  double get statusBottomHeight =>
      View.of(this).padding.bottom / View.of(this).devicePixelRatio;

  /// Determines the breakpoint based on the screen width.
  /// Returns [Breakpoint.desktop] if width > 834,
  /// [Breakpoint.tablet] if width > 600, otherwise [Breakpoint.mobile].
  Breakpoint get breakpoint {
    if (width > 1024) {
      return Breakpoint.desktop; // Desktop: width > 1024px
    } else if (width > 600) {
      return Breakpoint.tablet; // Tablet: 600px < width <= 1024px
    }
    return Breakpoint.mobile; // Mobile: width <= 600px
  }

  /// Returns true if the screen size is categorized as desktop.
  bool get isDesktop => breakpoint == Breakpoint.desktop;

  /// Returns true if the screen size is categorized as tablet.
  bool get isTablet => breakpoint == Breakpoint.tablet;

  /// Returns true if the screen size is categorized as mobile.
  bool get isMobile => breakpoint == Breakpoint.mobile;

  /// Returns a value based on the current screen size.
  /// Uses [desktop] for desktop, [tablet] for
  /// tablet (or desktop if tablet is null),
  /// and [mobile] for mobile.
  // T responsive<T>(T mobile, T? tablet,T desktop) {
  //   if (isDesktop) {
  //     return desktop;
  //   } else if (isTablet) {
  //     return tablet ?? desktop;
  //   }
  //   return mobile;
  // }

  /// The height of space at the bottom.
  double get bottomSpace => statusBottomHeight + insets.containerPadding;

  /// The height of the top system padding, adjusted for pixel ratio.
  double get statusTopHeight =>
      View.of(this).padding.top / View.of(this).devicePixelRatio;

  /// Group of theme-related properties.

  /// Retrieves the [AppTheme] associated with the current context.
  AppTheme get designSystem => AppDesignSystem.of(this);

  /// Returns the colors from the designSystem.
  BaseColors get designSystemColor => designSystem.colors;

  /// Returns the theme data from the context.
  ThemeData get theme => Theme.of(this);

  /// Returns the color scheme from the theme.
  BaseColors get colors => designSystem.colors;

  /// Returns the base text styles from the theme.
  BaseTextStyle get textStyles => designSystem.textStyle;

  /// Returns the base gradients from the theme.
  BaseGradients get gradients => designSystem.gradients;

  /// Returns the base corners (radii) from the theme.
  BaseCorners get corners => designSystem.corners;

  /// Returns the base shadows from the theme.
  BaseShadows get shadows => designSystem.shadows;

  /// Returns the base insets (paddings) from the theme.
  BaseInsets get insets => designSystem.insets;
}
