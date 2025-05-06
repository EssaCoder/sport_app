// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club_details_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$clubDetailsStateHash() => r'6058befe85038bc07ec8e70a70c844c5ba8e7d9f';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ClubDetailsState extends BuildlessAsyncNotifier<ClubDetail> {
  late final int id;

  FutureOr<ClubDetail> build(int id);
}

/// A state provider for club details.
///
/// This provider manages the state of club details.
/// It provides a [Future] that resolves to a [ClubDetail] object.
/// The state is managed using the [AsyncValue] class.
///
///
/// Copied from [ClubDetailsState].
@ProviderFor(ClubDetailsState)
const clubDetailsStateProvider = ClubDetailsStateFamily();

/// A state provider for club details.
///
/// This provider manages the state of club details.
/// It provides a [Future] that resolves to a [ClubDetail] object.
/// The state is managed using the [AsyncValue] class.
///
///
/// Copied from [ClubDetailsState].
class ClubDetailsStateFamily extends Family<AsyncValue<ClubDetail>> {
  /// A state provider for club details.
  ///
  /// This provider manages the state of club details.
  /// It provides a [Future] that resolves to a [ClubDetail] object.
  /// The state is managed using the [AsyncValue] class.
  ///
  ///
  /// Copied from [ClubDetailsState].
  const ClubDetailsStateFamily();

  /// A state provider for club details.
  ///
  /// This provider manages the state of club details.
  /// It provides a [Future] that resolves to a [ClubDetail] object.
  /// The state is managed using the [AsyncValue] class.
  ///
  ///
  /// Copied from [ClubDetailsState].
  ClubDetailsStateProvider call(int id) {
    return ClubDetailsStateProvider(id);
  }

  @override
  ClubDetailsStateProvider getProviderOverride(
    covariant ClubDetailsStateProvider provider,
  ) {
    return call(provider.id);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'clubDetailsStateProvider';
}

/// A state provider for club details.
///
/// This provider manages the state of club details.
/// It provides a [Future] that resolves to a [ClubDetail] object.
/// The state is managed using the [AsyncValue] class.
///
///
/// Copied from [ClubDetailsState].
class ClubDetailsStateProvider
    extends AsyncNotifierProviderImpl<ClubDetailsState, ClubDetail> {
  /// A state provider for club details.
  ///
  /// This provider manages the state of club details.
  /// It provides a [Future] that resolves to a [ClubDetail] object.
  /// The state is managed using the [AsyncValue] class.
  ///
  ///
  /// Copied from [ClubDetailsState].
  ClubDetailsStateProvider(int id)
    : this._internal(
        () => ClubDetailsState()..id = id,
        from: clubDetailsStateProvider,
        name: r'clubDetailsStateProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$clubDetailsStateHash,
        dependencies: ClubDetailsStateFamily._dependencies,
        allTransitiveDependencies:
            ClubDetailsStateFamily._allTransitiveDependencies,
        id: id,
      );

  ClubDetailsStateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  FutureOr<ClubDetail> runNotifierBuild(covariant ClubDetailsState notifier) {
    return notifier.build(id);
  }

  @override
  Override overrideWith(ClubDetailsState Function() create) {
    return ProviderOverride(
      origin: this,
      override: ClubDetailsStateProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<ClubDetailsState, ClubDetail> createElement() {
    return _ClubDetailsStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ClubDetailsStateProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ClubDetailsStateRef on AsyncNotifierProviderRef<ClubDetail> {
  /// The parameter `id` of this provider.
  int get id;
}

class _ClubDetailsStateProviderElement
    extends AsyncNotifierProviderElement<ClubDetailsState, ClubDetail>
    with ClubDetailsStateRef {
  _ClubDetailsStateProviderElement(super.provider);

  @override
  int get id => (origin as ClubDetailsStateProvider).id;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
