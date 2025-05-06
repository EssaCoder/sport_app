import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:sport_app/src/core/extensions/extensions.dart';
import 'package:sport_app/src/core/widgets/text/default_text_color.dart';
import 'package:sport_app/src/core/widgets/utils_widgets/app_bar_widget.dart';
import 'package:sport_app/src/core/widgets/utils_widgets/app_scaffold.dart';
import 'package:sport_app/src/core/widgets/utils_widgets/failure_widget.dart';
import 'package:sport_app/src/features/clubs/data/enums/enums.dart';
import 'package:sport_app/src/features/clubs/data/models/club_details.dart';
import 'package:sport_app/src/features/clubs/presentation/providers/club_details_state.dart';
import 'package:sport_app/src/features/clubs/presentation/views/widgets/club_details_widget.dart';

/// A screen that displays the details of a club.
///
/// This screen displays the details of a club, including its name, logo,
/// location, cover image, established at, stadium, current president,
/// description, and sports.
class ClubDetailsScreen extends ConsumerStatefulWidget {
  const ClubDetailsScreen({required this.id, required this.name, super.key});

  final int id;
  final String name;

  @override
  ConsumerState<ClubDetailsScreen> createState() => _ClubDetailsScreenState();
}

class _ClubDetailsScreenState extends ConsumerState<ClubDetailsScreen> {
  int index = 0;
  final _refreshController = RefreshController();

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: DefaultTextColor(
        color: context.colors.textDefault,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: context.insets.sectionHPadding,
              ),
              child: AppBarWidget(title: widget.name),
            ),
            SizedBox(height: context.insets.sectionVPadding),
            Expanded(
              child: SmartRefresher(
                header: const MaterialClassicHeader(),
                controller: _refreshController,
                onRefresh: () {
                  ref.refresh(clubDetailsStateProvider(widget.id));
                  _refreshController.refreshCompleted();
                },
                child: Consumer(
                  builder: (context, ref, child) {
                    final clubDetailsState = ref.watch(
                      clubDetailsStateProvider(widget.id),
                    );
                    return clubDetailsState.when(
                      error:
                          (error, stackTrace) => FailureWidget(
                            topPadding: context.height * 0.2,
                            exception: 'error',
                            onPressed: () {
                              ref.refresh(clubDetailsStateProvider(widget.id));
                            },
                          ),
                      loading:
                          () => Skeletonizer(
                            child: ClubDetailsWidget(club: _dummyData),
                          ),
                      data: (data) => ClubDetailsWidget(club: data),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ClubDetail get _dummyData => ClubDetail(
    id: 1,
    name: BoneMock.name,
    logo: null,
    location: BoneMock.title,
    coverImage: null,
    establishedAt: BoneMock.title,
    stadium: BoneMock.title,
    currentPresident: BoneMock.name,
    description: BoneMock.subtitle,
    sports: [Sport.football],
  );
}
