// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClubDetail _$ClubDetailFromJson(Map<String, dynamic> json) => ClubDetail(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  logo: json['logo'] as String?,
  location: json['location'] as String?,
  coverImage: json['cover_image'] as String?,
  establishedAt: json['established_at'] as String?,
  stadium: json['stadium'] as String?,
  currentPresident: json['current_president'] as String?,
  description: json['description'] as String?,
  sports:
      (json['sports'] as List<dynamic>?)
          ?.map(
            (e) => $enumDecode(_$SportEnumMap, e, unknownValue: Sport.football),
          )
          .toList(),
);

Map<String, dynamic> _$ClubDetailToJson(ClubDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
      'cover_image': instance.coverImage,
      'established_at': instance.establishedAt,
      'location': instance.location,
      'stadium': instance.stadium,
      'current_president': instance.currentPresident,
      'description': instance.description,
      'sports': instance.sports?.map((e) => _$SportEnumMap[e]!).toList(),
    };

const _$SportEnumMap = {
  Sport.football: 1,
  Sport.basketball: 2,
  Sport.volleyball: 4,
  Sport.handball: 3,
};
