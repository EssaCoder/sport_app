import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/gen/assets.gen.dart';
import 'package:sport_app/generated/codegen_loader.g.dart';
import 'package:sport_app/src/core/extensions/extensions.dart';
import 'package:sport_app/src/core/widgets/images/images_widget.dart';
import 'package:sport_app/src/core/widgets/text/text_widget.dart';
import 'package:sport_app/src/features/clubs/presentation/providers/club_details_state.dart';

/// A widget that displays the information of a club.
///
/// This widget is used to display the information of a club.
///
///
class ClubInfoPageWidget extends ConsumerStatefulWidget {
  const ClubInfoPageWidget({required this.id, super.key});

  final int id;

  @override
  ConsumerState<ClubInfoPageWidget> createState() => _ClubInfoPageWidgetState();
}

class _ClubInfoPageWidgetState extends ConsumerState<ClubInfoPageWidget> {
  @override
  Widget build(BuildContext context) {
    final clubDetails =
        ref.watch(clubDetailsStateProvider(widget.id)).valueOrNull;

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _infoCardWidget(
            title: LocaleKeys.clubs_establishedAt.tr(),
            subtitle: clubDetails?.establishedAt,
            icon: Assets.icons.calendar.path,
          ),
          SizedBox(height: context.insets.cardMdGap),
          _infoCardWidget(
            title: LocaleKeys.clubs_location.tr(),
            subtitle: clubDetails?.location,
            icon: Assets.icons.pin.path,
          ),
          SizedBox(height: context.insets.cardMdGap),
          _infoCardWidget(
            title: LocaleKeys.clubs_stadium.tr(),
            subtitle: clubDetails?.stadium,
            icon: Assets.icons.sports.path,
          ),
          SizedBox(height: context.insets.cardMdGap),
          _infoCardWidget(
            title: LocaleKeys.clubs_currentPresident.tr(),
            subtitle: clubDetails?.currentPresident,
            icon: Assets.icons.personal.path,
          ),
          SizedBox(height: context.bottomSpace),
        ],
      ),
    );
  }

  Widget _infoCardWidget({
    required String title,
    required String? subtitle,
    String? icon,
  }) => Ink(
    padding: EdgeInsets.all(context.insets.cardSmPadding),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(context.corners.rb),
      color: context.colors.backgroundCard,
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: context.insets.cardSmGap,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (icon != null)
              ImageSvgAsset(
                icon,
                width: 20.h,
                height: 20.h,
                color: context.colors.textDefault,
              ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(title, style: context.textStyles.titleSmall),
                  SizedBox(height: context.insets.cardSmGap),
                  TextWidget(
                    subtitle,
                    style: context.textStyles.titleMedium.copyWith(
                      color: context.colors.textParagraph,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
