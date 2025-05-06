import 'package:flutter/material.dart';
import 'package:sport_app/src/config/themes/app_theme.dart';

/// The app design system used in the app.
///
/// This class is used to design the app.
/// It is used to design the app.
///
/// 
class AppDesignSystem extends StatelessWidget {
  const AppDesignSystem({
    required this.appTheme,
    required this.builder,
    super.key,
  });

  final AppTheme appTheme;
  final WidgetBuilder builder;

  @override
  Widget build(BuildContext context) {
    return _InheritedAppTheme(
      appTheme: appTheme,
      child: MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
        child: Builder(builder: builder),
      ),
    );
  }

  static AppTheme of(BuildContext context) {
    final inheritedAppTheme =
        context.dependOnInheritedWidgetOfExactType<_InheritedAppTheme>();
    assert(inheritedAppTheme != null, 'No AppTheme found in context');
    return inheritedAppTheme!.appTheme;
  }
}

class _InheritedAppTheme extends InheritedWidget {
  const _InheritedAppTheme({required this.appTheme, required super.child});

  final AppTheme appTheme;

  @override
  bool updateShouldNotify(_InheritedAppTheme oldWidget) =>
      appTheme != oldWidget.appTheme;
}
