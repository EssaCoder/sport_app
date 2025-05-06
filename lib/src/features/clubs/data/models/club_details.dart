import 'package:json_annotation/json_annotation.dart';
import 'package:sport_app/src/features/clubs/data/enums/enums.dart';
import 'package:sport_app/src/features/clubs/data/models/club.dart';

part 'club_details.g.dart';

@JsonSerializable()
class ClubDetail extends Club {
  ClubDetail({
    required super.id,
    required super.name,
    required super.logo,
    required this.location,
    required this.coverImage,
    required this.establishedAt,
    required this.stadium,
    required this.currentPresident,
    required this.description,
    required this.sports,
  });

  factory ClubDetail.fromJson(Map<String, dynamic> json) =>
      _$ClubDetailFromJson(json);

  @JsonKey(name: 'cover_image')
  final String? coverImage;
  @JsonKey(name: 'established_at')
  final String? establishedAt;
  final String? location;
  final String? stadium;
  @JsonKey(name: 'current_president')
  final String? currentPresident;
  final String? description;
  @JsonKey(unknownEnumValue: Sport.football)
  final List<Sport>? sports;
}
