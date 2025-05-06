import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/gen/assets.gen.dart';
import 'package:sport_app/src/core/enums/app_theme_mode.dart';
import 'package:sport_app/src/core/extensions/extensions.dart';
import 'package:sport_app/src/core/providers/theme_notifier.dart';
import 'package:sport_app/src/core/widgets/images/images_widget.dart';

/// The button theme widget used in the app.
///
/// This is a widget that contains the button theme widget used in the app.
/// It is used to handle the button theme widget used in the app.
///
/// 
class ButtonThemeWidget extends ConsumerWidget {
  const ButtonThemeWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeNotifier = ref.watch(themeNotifierProvider);
    return SizedBox(
      height: 48.h,
      width: 48.h,
      child: MaterialButton(
        color: context.colors.backgroundCard,
        height: double.infinity,
        padding: EdgeInsets.zero,
        elevation: 0,
        highlightElevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(context.corners.rl),
        ),
        onPressed: () {
          ref.read(themeNotifierProvider.notifier).switchMode();
        },
        child: ImageSvgAsset(
          themeNotifier == AppThemeMode.dark
              ? Assets.icons.lightTheme.path
              : Assets.icons.moon.path,
          color: context.colors.textDefault,
          height: 24.h,
        ),
      ),
    );
  }
}
