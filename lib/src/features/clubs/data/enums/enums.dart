import 'package:freezed_annotation/freezed_annotation.dart';

/// The sport enum used in the app.
///
/// This is a enum that contains the sport enum used in the app.
/// It is used to handle the sport enum used in the app.
///
/// 
@JsonEnum()
enum Sport {
  @JsonValue(1)
  football,
  @JsonValue(2)
  basketball,
  @JsonValue(4)
  volleyball,
  @JsonValue(3)
  handball,
}
