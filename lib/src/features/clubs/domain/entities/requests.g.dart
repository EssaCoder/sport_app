// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requests.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClubsRequest _$ClubsRequestFromJson(Map<String, dynamic> json) => ClubsRequest(
  word: json['search'] as String?,
  limit: (json['limit'] as num?)?.toInt() ?? 100,
);

Map<String, dynamic> _$ClubsRequestToJson(ClubsRequest instance) =>
    <String, dynamic>{
      if (instance.word case final value?) 'search': value,
      'limit': instance.limit,
    };
