import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/src/config/routes.dart';
import 'package:sport_app/src/config/themes/app_design_system.dart';
import 'package:sport_app/src/config/themes/app_theme.dart';
import 'package:sport_app/src/core/extensions/extensions.dart';
import 'package:sport_app/src/core/providers/theme_notifier.dart';
import 'package:sport_app/src/core/widgets/text/default_text_color.dart';

/// The main application widget.
///
/// This widget is the root of the application and is responsible for
/// initializing the application.
///
/// 
class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => ScreenUtilInit(
    designSize: const Size(375, 758),
    minTextAdapt: true,
    splitScreenMode: true,
    enableScaleWH: () => !context.isDesktop,
    builder: (context, child) {
      final mode = ref.watch(themeNotifierProvider);
      final appTheme = AppTheme(
        breakpoint: context.breakpoint,
        themeMode: mode,
      );
      return AppDesignSystem(
        appTheme: appTheme,
        builder:
            (context) => MaterialApp.router(
              routeInformationProvider: appRouter.routeInformationProvider,
              routeInformationParser: appRouter.routeInformationParser,
              routerDelegate: appRouter.routerDelegate,
              locale: context.locale,
              debugShowCheckedModeBanner: false,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              themeMode: ThemeMode.dark,
              theme: appTheme.themeData,
              builder:
                  (context, widget) => DefaultTextColor(
                    color: context.colors.textPrimary,
                    child: MediaQuery(
                      data: MediaQuery.of(
                        context,
                      ).copyWith(textScaler: TextScaler.noScaling),
                      child: widget ?? const SizedBox(),
                    ),
                  ),
            ),
      );
    },
  );
}
