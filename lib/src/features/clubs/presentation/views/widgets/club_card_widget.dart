import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/src/core/extensions/extensions.dart';
import 'package:sport_app/src/core/widgets/images/images_widget.dart';
import 'package:sport_app/src/core/widgets/text/text_widget.dart';
import 'package:sport_app/src/features/clubs/data/models/club.dart';
import 'package:sport_app/src/features/clubs/presentation/views/screens/routes.dart';

/// A widget that displays a club card.
///
/// This widget is used to display a club card.
/// It is a [StatelessWidget] that uses the [InkWell] widget to handle the tap event.
///
///
class ClubCardWidget extends StatelessWidget {
  const ClubCardWidget({required this.club, super.key});

  final Club club;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ClubDetailsRouteData(
          id: club.id,
          name: club.name,
        ).push<dynamic>(context);
      },
      borderRadius: BorderRadius.all(context.corners.rl),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(context.corners.rl),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.all(context.insets.cardSmGap),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageNetworkWidget(club.logo, width: 75.h, height: 75.h),
              SizedBox(
                height: context.insets.cardSmGap,
                width: context.insets.cardSmGap,
              ),
              Flexible(
                child: TextWidget(
                  club.name,
                  style: context.textStyles.labelLarge,
                  maxLines: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
