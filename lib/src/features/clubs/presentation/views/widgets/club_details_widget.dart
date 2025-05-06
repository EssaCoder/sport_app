import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/src/core/extensions/extensions.dart';
import 'package:sport_app/src/core/widgets/images/images_widget.dart';
import 'package:sport_app/src/core/widgets/text/text_widget.dart';
import 'package:sport_app/src/features/clubs/data/models/club_details.dart';
import 'package:sport_app/src/features/clubs/presentation/views/widgets/club_info_page_widget.dart';

/// A widget that displays the details of a club.
///
/// This widget is used to display the details of a club.
///
/// 
class ClubDetailsWidget extends StatefulWidget {
  const ClubDetailsWidget({required this.club, super.key});

  final ClubDetail club;

  @override
  State<ClubDetailsWidget> createState() => _ClubDetailsWidgetState();
}

class _ClubDetailsWidgetState extends State<ClubDetailsWidget> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: context.insets.sectionHPadding,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Ink(
            padding: EdgeInsets.all(context.insets.spacingXl),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(context.corners.rb),
              color: context.colors.backgroundWhite,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageNetworkWidget(widget.club.logo, height: 75.h, width: 75.h),
                SizedBox(height: context.insets.spacingMd),
                TextWidget(
                  widget.club.name,
                  style: context.textStyles.bodyXlLarge,
                ),
              ],
            ),
          ),
          SizedBox(height: context.insets.sectionMdGap),
          Expanded(child: ClubInfoPageWidget(id: widget.club.id)),
        ],
      ),
    );
  }
}
