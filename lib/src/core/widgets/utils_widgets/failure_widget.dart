import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/gen/assets.gen.dart';
import 'package:sport_app/generated/codegen_loader.g.dart';
import 'package:sport_app/src/core/extensions/extensions.dart';
import 'package:sport_app/src/core/network/error/failure.dart';
import 'package:sport_app/src/core/widgets/images/images_widget.dart';
import 'package:sport_app/src/core/widgets/text/text_widget.dart';

/// The failure widget used in the app.
///
/// This is a widget that contains the failure widget used in the app.
/// It is used to handle the failure widget used in the app.
///
///
class FailureWidget extends ConsumerWidget {
  const FailureWidget({
    required this.exception,
    this.subtitle,
    this.title,
    this.onPressed,
    this.topPadding,
    this.buttonText,
    super.key,
  });

  final String? title;
  final String? subtitle;
  final String? buttonText;

  final Object? exception;
  final VoidCallback? onPressed;
  final double? topPadding;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isConnectError =
        (exception is Failure) &&
        (exception! as Failure).message.contains('connection');

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.insets.sectionSmGap),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: topPadding),
            ImageSvgAsset(
              isConnectError ? Assets.icons.wifi.path : Assets.icons.empty.path,
              color: context.colors.textDefault,
            ),
            SizedBox(
              height: context.insets.tabSectionsGap,
              width: double.infinity,
            ),
            TextWidget(
              title ??
                  (isConnectError
                      ? LocaleKeys.clubs_connectionError.tr()
                      : LocaleKeys.clubs_error.tr()),
              style: context.textStyles.displaySmall.copyWith(
                color: context.colors.textDefault,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: context.insets.sectionHPadding),
            TextWidget(
              subtitle ??
                  (isConnectError
                      ? LocaleKeys.clubs_serverError.tr()
                      : LocaleKeys.clubs_dataLoadingError.tr()),
              style: context.textStyles.titleMedium.copyWith(
                color: context.colors.textParagraph,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: context.insets.tabSectionsGap),
            if (onPressed != null)
              MaterialButton(
                color: context.colors.backgroundPrimary,
                disabledColor: context.colors.backgroundWhite,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(context.corners.rc360),
                ),
                elevation: 0,
                padding: EdgeInsets.symmetric(
                  horizontal: 32.h,
                  vertical: context.insets.tabSectionsGap,
                ),
                onPressed: onPressed,
                child: TextWidget(
                  buttonText ?? LocaleKeys.clubs_tryAgain.tr(),
                  style: context.textStyles.titleSmall.copyWith(
                    color: context.colors.textOnActive,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
