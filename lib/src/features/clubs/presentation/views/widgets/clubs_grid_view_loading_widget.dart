import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:sport_app/src/features/clubs/data/models/club.dart';
import 'package:sport_app/src/features/clubs/presentation/views/widgets/clubs_grid_view_widget.dart';

/// A widget that displays a loading state for the clubs grid view.
///
/// This widget is used to display a loading state for the clubs grid view.
///
///
class ClubsGridViewLoadingWidget extends StatelessWidget {
  const ClubsGridViewLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: ClubsGridViewWidget(
        clubs: List.generate(
          20,
          (index) => Club(id: 0, name: BoneMock.name, logo: null),
        ),
      ),
    );
  }
}
