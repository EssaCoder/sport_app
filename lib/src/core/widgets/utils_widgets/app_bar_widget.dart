import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/gen/assets.gen.dart';
import 'package:sport_app/src/core/extensions/extensions.dart';
import 'package:sport_app/src/core/widgets/images/images_widget.dart';
import 'package:sport_app/src/core/widgets/text/text_widget.dart';

/// The app bar widget used in the app.
///
/// This is a widget that contains the app bar widget used in the app.
/// It is used to handle the app bar widget used in the app.
///
/// 
class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    this.leading,
    this.trailing,
    this.middle,
    this.title,
    this.onTapBack,
    this.foregroundColor,
    this.centerMiddle = true,
    super.key,
  });

  final Widget? leading;

  final Widget? middle;

  final Widget? trailing;
  final bool centerMiddle;
  final String? title;
  final GestureTapCallback? onTapBack;
  final Color? foregroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      child: NavigationToolbar(
        leading:
            leading ??
            InkWell(
              onTap: onTapBack ?? () => Navigator.pop(context),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: ImageSvgAsset(
                Assets.icons.arrowRight.path,
                color: foregroundColor ?? context.colors.textDefault,
                height: 20.h,
                width: 20.h,
              ),
            ),
        middleSpacing: 8.h,
        middle:
            title != null
                ? Align(
                  alignment:
                      centerMiddle
                          ? Alignment.center
                          : AlignmentDirectional.centerStart,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: TextWidget(
                      title,
                      style: context.textStyles.titleLarge.copyWith(
                        color: foregroundColor ?? context.colors.textDefault,
                      ),
                    ),
                  ),
                )
                : middle,
        trailing: trailing,
        centerMiddle: centerMiddle,
      ),
    );
  }
}
