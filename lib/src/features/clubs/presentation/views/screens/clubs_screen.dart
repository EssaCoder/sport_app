import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:sport_app/gen/assets.gen.dart';
import 'package:sport_app/generated/codegen_loader.g.dart';
import 'package:sport_app/src/core/extensions/extensions.dart';
import 'package:sport_app/src/core/widgets/buttons/button_theme_widget.dart';
import 'package:sport_app/src/core/widgets/fields/text_field_widget.dart';
import 'package:sport_app/src/core/widgets/images/images_widget.dart';
import 'package:sport_app/src/core/widgets/text/default_text_color.dart';
import 'package:sport_app/src/core/widgets/utils_widgets/app_bar_widget.dart';
import 'package:sport_app/src/core/widgets/utils_widgets/app_scaffold.dart';
import 'package:sport_app/src/core/widgets/utils_widgets/empty_widget.dart';
import 'package:sport_app/src/core/widgets/utils_widgets/failure_widget.dart';
import 'package:sport_app/src/features/clubs/presentation/providers/clubs_filter_state.dart';
import 'package:sport_app/src/features/clubs/presentation/providers/clubs_state.dart';
import 'package:sport_app/src/features/clubs/presentation/views/widgets/clubs_grid_view_loading_widget.dart';
import 'package:sport_app/src/features/clubs/presentation/views/widgets/clubs_grid_view_widget.dart';

/// write this to show list of clubs
/// The ClubsScreen widget is a screen that displays a list of clubs.
/// It includes a search bar to filter clubs by name and a refresh controller
/// to refresh the list.
class ClubsScreen extends ConsumerStatefulWidget {
  const ClubsScreen({super.key});

  @override
  ConsumerState<ClubsScreen> createState() => _ClubsScreenState();
}

class _ClubsScreenState extends ConsumerState<ClubsScreen> {
  final _searchController = TextEditingController();
  final _refreshController = RefreshController();

  Timer? _debounce;

  @override
  void initState() {
    _debounce?.cancel();
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    _refreshController.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final request = ref.watch(clubsFilterStateProvider);
    return AppScaffold(
      child: DefaultTextColor(
        color: context.colors.textDefault,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.insets.sectionHPadding,
          ),
          child: Column(
            children: [
              AppBarWidget(
                title: LocaleKeys.clubs_clubs.tr(),
                trailing: const ButtonThemeWidget(),
              ),
              SizedBox(height: context.insets.spacingMd),
              TextFieldWidget(
                initialValue: request.word,
                hintText: LocaleKeys.clubs_search.tr(),
                prefixIconConstraints: BoxConstraints(
                  minWidth: 36.h,
                  maxWidth: 36.h,
                ),
                prefixIcon: Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: ImageSvgAsset(
                    Assets.icons.search.path,
                    color: context.colors.fieldTextPlaceholder,
                    width: 20.h,
                    height: 20.h,
                  ),
                ),
                onChanged: (value) {
                  if (_debounce?.isActive ?? false) {
                    _debounce?.cancel();
                  }
                  _debounce = Timer(const Duration(milliseconds: 800), () {
                    ref.read(clubsFilterStateProvider.notifier).search(value);
                  });
                },
              ),
              SizedBox(height: context.insets.spacing3xl),
              Expanded(
                child: Consumer(
                  builder: (context, ref, child) {
                    final clubsState = ref.watch(clubsStateProvider);
                    return clubsState.when(
                      loading: ClubsGridViewLoadingWidget.new,
                      error:
                          (error, stackTrace) => FailureWidget(
                            topPadding: context.height * 0.15,
                            exception: 'error',
                            onPressed: () {
                              ref.refresh(clubsStateProvider);
                            },
                          ),
                      data: (data) {
                        if (data.isNotEmpty == true) {
                          return ClubsGridViewWidget(
                            clubs: data,
                            onRefresh: () {
                              ref.refresh(clubsStateProvider);
                            },
                          );
                        }
                        return EmptyWidget(
                          topPadding: context.height * 0.2,
                          title: LocaleKeys.clubs_noContent.tr(),
                          subtitle: LocaleKeys.clubs_noContentSubtitle.tr(),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
