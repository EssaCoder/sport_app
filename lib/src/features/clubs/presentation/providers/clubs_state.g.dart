// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clubs_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$clubsStateHash() => r'b5e9ae75ec5b72c9111e233e544c024f455154fe';

/// A state provider for clubs.
///
/// This provider manages the state of clubs.
/// It provides a [Future] that resolves to a [List<Club>] object.
/// The state is managed using the [AsyncValue] class.
///
///
/// Copied from [ClubsState].
@ProviderFor(ClubsState)
final clubsStateProvider =
    AsyncNotifierProvider<ClubsState, List<Club>>.internal(
      ClubsState.new,
      name: r'clubsStateProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$clubsStateHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$ClubsState = AsyncNotifier<List<Club>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
