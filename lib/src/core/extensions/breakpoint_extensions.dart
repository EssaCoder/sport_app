part of 'extensions.dart';

/// The extension on the [Breakpoint] enum.
///
/// This extension is used to get the responsive value based on the current breakpoint.
/// It is used to get the responsive value based on the current breakpoint.
///
/// 
extension BreakpointExtensions on Breakpoint {
  /// Returns a value based on the current breakpoint.
  /// Uses [desktop] for desktop, [tablet] for
  /// tablet (or desktop if tablet is null),
  /// and [mobile] for mobile.
  T responsive<T>(T mobile, T? tablet, T desktop) {
    if (this == Breakpoint.desktop) {
      return desktop;
    } else if (this == Breakpoint.tablet) {
      return tablet ?? desktop;
    }
    return mobile;
  }
}
