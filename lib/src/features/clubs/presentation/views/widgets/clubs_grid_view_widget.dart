import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:sport_app/src/core/extensions/extensions.dart';
import 'package:sport_app/src/features/clubs/data/models/club.dart';
import 'package:sport_app/src/features/clubs/presentation/views/widgets/club_card_widget.dart';

/// A widget that displays a grid view of clubs.
///
/// This widget is used to display a grid view of clubs.
///
///
class ClubsGridViewWidget extends ConsumerStatefulWidget {
  const ClubsGridViewWidget({required this.clubs, this.onRefresh, super.key});

  final List<Club> clubs;
  final VoidCallback? onRefresh;

  @override
  ConsumerState<ClubsGridViewWidget> createState() =>
      _ClubsGridViewWidgetState();
}

class _ClubsGridViewWidgetState extends ConsumerState<ClubsGridViewWidget> {
  final refreshController = RefreshController();

  @override
  void dispose() {
    refreshController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      header: const MaterialClassicHeader(),
      controller: refreshController,
      onRefresh: () {
        widget.onRefresh?.call();
        refreshController.refreshCompleted();
      },
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisExtent: 120.h,
          mainAxisSpacing: context.insets.cardMdGap,
          crossAxisSpacing: context.insets.cardMdGap,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: context.insets.sectionHPadding,
        ).copyWith(bottom: context.bottomSpace),
        itemCount: widget.clubs.length,
        itemBuilder: (_, index) => ClubCardWidget(club: widget.clubs[index]),
      ),
    );
  }
}
