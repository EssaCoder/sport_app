// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'requests.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClubsRequest {

 String? get word; set word(String? value); int get limit; set limit(int value);
/// Create a copy of ClubsRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClubsRequestCopyWith<ClubsRequest> get copyWith => _$ClubsRequestCopyWithImpl<ClubsRequest>(this as ClubsRequest, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClubsRequest&&(identical(other.word, word) || other.word == word)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,word,limit);

@override
String toString() {
  return 'ClubsRequest(word: $word, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $ClubsRequestCopyWith<$Res>  {
  factory $ClubsRequestCopyWith(ClubsRequest value, $Res Function(ClubsRequest) _then) = _$ClubsRequestCopyWithImpl;
@useResult
$Res call({
 String? word, int limit
});




}
/// @nodoc
class _$ClubsRequestCopyWithImpl<$Res>
    implements $ClubsRequestCopyWith<$Res> {
  _$ClubsRequestCopyWithImpl(this._self, this._then);

  final ClubsRequest _self;
  final $Res Function(ClubsRequest) _then;

/// Create a copy of ClubsRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? word = freezed,Object? limit = null,}) {
  return _then(ClubsRequest(
word: freezed == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String?,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


// dart format on
