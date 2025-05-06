import 'package:flutter/material.dart';
import 'package:sport_app/gen/assets.gen.dart';
import 'package:sport_app/src/core/extensions/extensions.dart';
import 'package:sport_app/src/core/widgets/images/images_widget.dart';
import 'package:sport_app/src/core/widgets/text/text_widget.dart';

/// The empty widget used in the app.
///
/// This is a widget that contains the empty widget used in the app.
/// It is used to handle the empty widget used in the app.
///
/// 
class EmptyWidget extends StatelessWidget {
  const EmptyWidget({
    this.subtitle,
    this.title,
    this.topPadding,
    super.key,
  });

  final String? title;
  final String? subtitle;
  final double? topPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.insets.sectionSmGap),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: topPadding),
            ImageSvgAsset(
              Assets.icons.empty.path,
              color: context.colors.textDefault,
            ),
            SizedBox(height: context.insets.spacingLg, width: double.infinity),
            TextWidget(
              title,
              style: context.textStyles.displaySmall.copyWith(
                color: context.colors.textDefault,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: context.insets.spacingXs),
            TextWidget(
              subtitle,
              style: context.textStyles.titleMedium.copyWith(
                color: context.colors.textParagraph,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
