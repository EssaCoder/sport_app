// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Club _$ClubFromJson(Map<String, dynamic> json) => Club(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  logo: json['logo'] as String?,
);

Map<String, dynamic> _$ClubToJson(Club instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'logo': instance.logo,
};
