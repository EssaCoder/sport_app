import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sport_app/src/core/network/dio/dio_client.dart';
import 'package:sport_app/src/features/clubs/data/api/clubs_api.dart';
import 'package:sport_app/src/features/clubs/data/repositories/clubs_repository.dart';

part 'injection_container.g.dart';

@riverpod
ClubsApi clubsApi(Ref ref) => ClubsApi(ref.read(dioClientProvider));

@riverpod
ClubsRepository clubsRepository(Ref ref) =>
    ClubsRepositoryImpl(ref.read(clubsApiProvider));
