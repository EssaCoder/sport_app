import 'package:json_annotation/json_annotation.dart';

part 'club.g.dart';

@JsonSerializable()
class Club {
  Club({required this.id, required this.name, required this.logo});

  factory Club.fromJson(Map<String, dynamic> json) => _$ClubFromJson(json);

  Map<String, dynamic> toJson() => _$ClubToJson(this);

  final int id;
  final String name;
  final String? logo;
}
