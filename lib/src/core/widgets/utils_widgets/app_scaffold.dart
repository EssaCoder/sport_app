import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sport_app/src/core/extensions/extensions.dart';
import 'package:sport_app/src/core/utils/utils.dart';

/// The app scaffold widget used in the app.
///
/// This is a widget that contains the app scaffold widget used in the app.
/// It is used to handle the app scaffold widget used in the app.
///
/// 
class AppScaffold extends StatelessWidget {
  const AppScaffold({
    required this.child,
    this.footer,
    this.bottomNavigationBar,
    this.scaffoldKey,
    this.statusBarColor,
    this.scaffoldBackgroundColor,
    this.statusBarIconLight,
    this.resizeToAvoidBottomInset,
    this.useTopSafeArea,
    this.useBottomSafeArea,
    this.padding,
    this.drawer,
    super.key,
  });

  final Widget child;
  final Widget? footer;
  final Widget? bottomNavigationBar;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  final Color? statusBarColor;
  final Color? scaffoldBackgroundColor;
  final bool? statusBarIconLight;
  final bool? resizeToAvoidBottomInset;
  final bool? useTopSafeArea;
  final bool? useBottomSafeArea;
  final Widget? drawer;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: statusBarColor ?? Colors.transparent,
        statusBarIconBrightness:
            (statusBarIconLight ?? context.designSystem.lightBrightness)
                ? Brightness.light
                : Brightness.dark,
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerTheme: DividerThemeData(
            color: footer == null ? null : Colors.transparent,
          ),
        ),
        child: Scaffold(
          key: scaffoldKey,
          extendBody: true,
          drawer: drawer,
          resizeToAvoidBottomInset: resizeToAvoidBottomInset,
          backgroundColor: scaffoldBackgroundColor,
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          body: GestureDetector(
            onTap: () => Utils.disposeKeyboard(context),
            child: SafeArea(
              top: useTopSafeArea ?? true,
              bottom: useBottomSafeArea ?? false,
              child: Padding(padding: padding ?? EdgeInsets.zero, child: child),
            ),
          ),
          bottomNavigationBar: bottomNavigationBar,
          persistentFooterButtons:
              footer != null
                  ? [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: context.insets.sectionMdGap - 8,
                      ).copyWith(bottom: context.insets.containerPadding - 8),
                      child: footer,
                    ),
                  ]
                  : null,
        ),
      ),
    );
  }
}
