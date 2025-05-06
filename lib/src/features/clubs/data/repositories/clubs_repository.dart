import 'package:sport_app/src/core/either/either.dart';
import 'package:sport_app/src/core/network/error/failure.dart';
import 'package:sport_app/src/features/clubs/data/api/clubs_api.dart';
import 'package:sport_app/src/features/clubs/data/models/club.dart';
import 'package:sport_app/src/features/clubs/data/models/club_details.dart';
import 'package:sport_app/src/features/clubs/domain/entities/requests.dart';

/// A repository interface for clubs operations.
///
/// This interface defines the methods for clubs operations.
/// It provides a contract for the repository implementation.
///
/// The repository handles the API requests and returns the results as [Either] objects.

abstract class ClubsRepository {
  /// Fetches a list of clubs based on the provided request.
  ///
  /// The request parameter is optional and can be used to filter the clubs.
  /// The method returns a [Future] that resolves to an [Either] object.
  /// The left type is [Failure] and the right type is [List<Club>].
  Future<Either<Failure, List<Club>>> getClubs(ClubsRequest? request);

  /// Fetches a club detail based on the provided ID.
  ///
  /// The ID parameter is required and represents the unique identifier of the club.
  /// The method returns a [Future] that resolves to an [Either] object.
  /// The left type is [Failure] and the right type is [ClubDetail].
  Future<Either<Failure, ClubDetail>> getClub(int id);
}

class ClubsRepositoryImpl implements ClubsRepository {
  ClubsRepositoryImpl(this._clubsApi);

  final ClubsApi _clubsApi;

  @override
  Future<Either<Failure, List<Club>>> getClubs(ClubsRequest? request) async {
    final either = await Either.guard(() => _clubsApi.getClubs(request));
    return either.fold(Left.new, (right) => Right(right.data));
  }

  @override
  Future<Either<Failure, ClubDetail>> getClub(int id) async {
    final either = await Either.guard(() => _clubsApi.getClub(id));
    return either.fold(Left.new, (right) => Right(right.data));
  }
}
