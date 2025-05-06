import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sport_app/src/features/clubs/data/di/injection_container.dart';
import 'package:sport_app/src/features/clubs/data/models/club.dart';
import 'package:sport_app/src/features/clubs/presentation/providers/clubs_filter_state.dart';

part 'clubs_state.g.dart';

/// A state provider for clubs.
///
/// This provider manages the state of clubs.
/// It provides a [Future] that resolves to a [List<Club>] object.
/// The state is managed using the [AsyncValue] class.
///
@Riverpod(keepAlive: true)
class ClubsState extends _$ClubsState {
  @override
  Future<List<Club>> build() async {
    state = const AsyncLoading();
    final clubsRepository = ref.read(clubsRepositoryProvider);
    final request = ref.watch(clubsFilterStateProvider);
    final either = await clubsRepository.getClubs(request);
    if (either.isRight) {
      return either.right;
    }
    throw either.left;
  }
}
