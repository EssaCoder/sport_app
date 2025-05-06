import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:sport_app/gen/fonts.gen.dart';
import 'package:sport_app/src/core/enums/app_theme_mode.dart';
import 'package:sport_app/src/core/extensions/extensions.dart';

part 'colors/app_colors.dart';
part 'colors/base_colors.dart';
part 'colors/dark_theme_colors.dart';
part 'colors/light_theme_colors.dart';
part 'corners/base_corners.dart';
part 'corners/mobile_corners.dart';
part 'gradients/base_gradients.dart';
part 'gradients/light_theme_gradients.dart';
part 'insets/app_insets.dart';
part 'insets/base_insets.dart';
part 'insets/desktop_insets.dart';
part 'insets/mobile_insets.dart';
part 'insets/tablet_insets.dart';
part 'shadows/base_shadows.dart';
part 'shadows/light_theme_shadows.dart';
part 'text_styles/base_text_style.dart';
part 'text_styles/mobile_text_style.dart';

/// The app theme used in the app.
///
/// This class is used to define the theme of the app.
///
/// 
@immutable
class AppTheme {
  AppTheme({required this.breakpoint, required this.themeMode}) {
    initializeDateFormatting();
    textStyle = _MobileTextStyle();
    colors = themeMode.mode(_LightThemeColors(), _DarkThemeColors());
    lightBrightness = themeMode == AppThemeMode.dark;
    shadows = _LightThemeShadows();
    gradients = _LightThemeGradients();
    corners = _MobileCorners();
    insets = breakpoint.responsive(
      _MobileInsets(),
      _TabletInsets(),
      _DesktopInsets(),
    );
  }

  late final BaseTextStyle textStyle;
  late final BaseColors colors;
  late final BaseGradients gradients;
  late final BaseCorners corners;
  late final BaseShadows shadows;
  late final BaseInsets insets;
  late final Breakpoint breakpoint;
  late final bool lightBrightness;
  late final AppThemeMode themeMode;

  ThemeData get themeData => ThemeData(
    fontFamily: FontFamily.iBMPlexSans,
    brightness: Brightness.light,
    primaryColor: colors.backgroundPrimary,
    scaffoldBackgroundColor: colors.backgroundSurface,
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: colors.backgroundWhite,
    ),
    //text selection theme
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: colors.backgroundWhiteV1,
      selectionHandleColor: colors.backgroundSurface,
      selectionColor: colors.backgroundBlack.withOpacity(0.1),
    ),
    extensions: [
      SkeletonizerConfigData.dark(
        effect: ShimmerEffect(
          baseColor: colors.base,
          highlightColor: colors.highlight,
          end: AlignmentDirectional.centerStart,
          begin: AlignmentDirectional.centerEnd,
          duration: const Duration(milliseconds: 1000),
        ),
        containersColor: colors.base,
        textBorderRadius: TextBoneBorderRadius(BorderRadius.all(corners.rc360)),
      ),
    ],

    colorScheme: ColorScheme.light(
      primary: colors.backgroundPrimary,
      onPrimary: colors.backgroundSurface,
      secondary: colors.backgroundWhite,
      onSecondary: colors.backgroundWhiteV1,
      tertiary: colors.backgroundSurface,
      onTertiary: colors.backgroundBlack,
      error: colors.backgroundCard,
      onError: colors.backgroundCardDefault,
      primaryContainer: colors.backgroundCardActive,
      onPrimaryContainer: colors.textDefault,
      secondaryContainer: colors.textPrimary,
      onSecondaryContainer: colors.textParagraph,
      tertiaryContainer: colors.textOnActive,
      onTertiaryContainer: colors.textParagraphOnActive,
      errorContainer: colors.navItemActive,
      onErrorContainer: colors.borderNeutralPrimary,
      surface: colors.textWhite,
      onSurface: colors.navItemDefault,

      ///new colors for button disabled
    ),

    /// Add other colors based on appTheme
    dividerTheme: const DividerThemeData(thickness: 0.5),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      errorBorder: InputBorder.none,
    ),
    listTileTheme: ListTileThemeData(
      contentPadding: EdgeInsets.symmetric(
        horizontal: insets.tabSectionsGap,
        vertical: insets.sectionHPadding,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(corners.rc)),
      tileColor: colors.backgroundWhite,
    ),
    //TODO: fix from design system
    datePickerTheme: DatePickerThemeData(
      backgroundColor: colors.textOnActive,
      yearStyle: textStyle.labelLarge.copyWith(color: colors.backgroundBlack),
      weekdayStyle: textStyle.labelLarge.copyWith(
        color: colors.backgroundBlack,
      ),
      dayStyle: textStyle.labelLarge.copyWith(color: colors.backgroundBlack),
      surfaceTintColor: colors.backgroundBlack,
      headerForegroundColor: colors.backgroundBlack,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(corners.rs)),
      cancelButtonStyle: ButtonStyle(
        padding: WidgetStatePropertyAll(
          EdgeInsets.symmetric(
            horizontal: insets.containerPadding * 2,
            vertical: insets.tabButtonGap,
          ),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.all(corners.rm)),
        ),
        foregroundColor: WidgetStatePropertyAll(colors.textParagraphOnActive),
        backgroundColor: WidgetStatePropertyAll(colors.backgroundWhite),
        textStyle: WidgetStatePropertyAll(textStyle.labelLarge),
      ),
      confirmButtonStyle: ButtonStyle(
        padding: WidgetStatePropertyAll(
          EdgeInsets.symmetric(
            horizontal: insets.containerPadding * 2,
            vertical: insets.tabButtonGap,
          ),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.all(corners.rm)),
        ),
        foregroundColor: WidgetStatePropertyAll(colors.backgroundPrimary),
        backgroundColor: WidgetStatePropertyAll(
          colors.segmentedButtonActiveBackground,
        ),
        textStyle: WidgetStatePropertyAll(textStyle.labelLarge),
      ),
    ),
    textTheme: TextTheme(
      displayLarge: textStyle.displayLarge,
      displayMedium: textStyle.displayMedium,
      displaySmall: textStyle.displaySmall,
      headlineLarge: textStyle.headlineLarge,
      headlineMedium: textStyle.headlineMedium,
      headlineSmall: textStyle.headlineSmall,
      titleLarge: textStyle.titleLarge,
      titleMedium: textStyle.titleMedium,
      titleSmall: textStyle.titleSmall,
      labelLarge: textStyle.labelLarge,
      labelMedium: textStyle.labelMedium,
      labelSmall: textStyle.labelSmall,
      bodyLarge: textStyle.bodyLarge,
      bodyMedium: textStyle.bodyXlLarge,
      bodySmall: textStyle.bodySmall,
    ).apply(
      displayColor: colors.backgroundPrimary,
      bodyColor: colors.backgroundPrimary,
    ),
    // Define other theme properties
  );
}
