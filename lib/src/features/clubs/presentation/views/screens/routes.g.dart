// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$clubsRouteData, $clubDetailsRouteData];

RouteBase get $clubsRouteData =>
    GoRouteData.$route(path: '/', factory: $ClubsRouteDataExtension._fromState);

extension $ClubsRouteDataExtension on ClubsRouteData {
  static ClubsRouteData _fromState(GoRouterState state) =>
      const ClubsRouteData();

  String get location => GoRouteData.$location('/');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $clubDetailsRouteData => GoRouteData.$route(
  path: '/club-details',

  factory: $ClubDetailsRouteDataExtension._fromState,
);

extension $ClubDetailsRouteDataExtension on ClubDetailsRouteData {
  static ClubDetailsRouteData _fromState(GoRouterState state) =>
      ClubDetailsRouteData(
        id: int.parse(state.uri.queryParameters['id']!)!,
        name: state.uri.queryParameters['name']!,
      );

  String get location => GoRouteData.$location(
    '/club-details',
    queryParams: {'id': id.toString(), 'name': name},
  );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
