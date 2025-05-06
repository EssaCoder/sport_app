import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sport_app/src/features/clubs/domain/entities/requests.dart';

part 'clubs_filter_state.g.dart';

/// A state provider for clubs filter.
///
/// This provider manages the state of clubs filter.
/// It provides a [ClubsRequest] object.
/// The state is managed using the [AsyncValue] class.
///
@Riverpod(keepAlive: true)
class ClubsFilterState extends _$ClubsFilterState {
  @override
  ClubsRequest build() => ClubsRequest();

  void search(String word) => state = state.copyWith(word: word);
}
