import 'package:json_annotation/json_annotation.dart';

part 'api_response.g.dart';

/// The api response class used in the app.
///
/// This is a class that contains the api response class used in the app.
/// It is used to handle the api response class used in the app.
///
///
@JsonSerializable(genericArgumentFactories: true)
class ApiResponse<T> {
  const ApiResponse({required this.data});

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) => _$ApiResponseFromJson(json, fromJsonT);
  final T data;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      _$ApiResponseToJson(this, toJsonT);
}
