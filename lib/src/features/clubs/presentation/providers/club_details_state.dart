import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sport_app/src/features/clubs/data/di/injection_container.dart';
import 'package:sport_app/src/features/clubs/data/models/club_details.dart';

part 'club_details_state.g.dart';

/// A state provider for club details.
///
/// This provider manages the state of club details.
/// It provides a [Future] that resolves to a [ClubDetail] object.
/// The state is managed using the [AsyncValue] class.
///
@Riverpod(keepAlive: true)
class ClubDetailsState extends _$ClubDetailsState {
  @override
  Future<ClubDetail> build(int id) async {
    state = const AsyncLoading();
    final clubsRepository = ref.read(clubsRepositoryProvider);
    final either = await clubsRepository.getClub(id);
    if (either.isRight) {
      return either.right;
    }
    throw either.left;
  }
}
