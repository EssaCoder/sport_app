import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sport_app/src/core/models/api_response.dart';
import 'package:sport_app/src/features/clubs/data/models/club.dart';
import 'package:sport_app/src/features/clubs/data/models/club_details.dart';
import 'package:sport_app/src/features/clubs/domain/entities/requests.dart';

part 'clubs_api.g.dart';

/// A REST API client for clubs-related operations.
///
/// This class provides methods to interact with the clubs API endpoints, including:
/// - Fetching clubs and details
///
/// The API client is generated using Retrofit and requires a [Dio] instance
/// and base URL to be configured.

@RestApi()
abstract class ClubsApi {
  factory ClubsApi(Dio dio) = _ClubsApi;

  @GET('v2/clubs')
  Future<ApiResponse<List<Club>>> getClubs(@Queries() ClubsRequest? request);

  @GET('clubs/{id}')
  Future<ApiResponse<ClubDetail>> getClub(@Path() int id);
}
