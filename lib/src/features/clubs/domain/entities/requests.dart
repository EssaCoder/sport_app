import 'package:freezed_annotation/freezed_annotation.dart';

part 'requests.freezed.dart';
part 'requests.g.dart';

/// A request entity for clubs operations.
///
/// This entity represents a request to fetch clubs with optional search criteria.
/// It includes a search word and a limit on the number of results.
///
/// The request can be serialized to JSON using the `toJson` method.
@freezed
@JsonSerializable()
class ClubsRequest with _$ClubsRequest {
  ClubsRequest({this.word, this.limit = 100});

  Map<String, dynamic> toJson() => _$ClubsRequestToJson(this);
  @override
  @JsonKey(name: 'search', includeIfNull: false)
  String? word;
  @override
  int limit;
}
