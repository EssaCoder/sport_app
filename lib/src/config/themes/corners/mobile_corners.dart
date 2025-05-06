part of '../app_theme.dart';

/// The mobile corners used in the app.
///
/// This class implements the [BaseCorners] mixin.
/// It provides the corners for the mobile app.
///
///
@immutable
class _MobileCorners implements BaseCorners {
  @override
  final Radius rs = Radius.circular(4.r);
  @override
  final Radius rm = Radius.circular(8.r);
  @override
  final Radius rl = Radius.circular(16.r);
  @override
  final Radius rb = Radius.circular(12.r);
  @override
  final Radius rc = Radius.circular(14.r);
  @override
  final Radius rx = Radius.circular(18.r);
  @override
  final Radius rbg = Radius.circular(18.r);
  @override
  final Radius rc360 = const Radius.circular(360);
}
