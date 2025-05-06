import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sport_app/src/features/clubs/presentation/views/screens/club_details_screen.dart';
import 'package:sport_app/src/features/clubs/presentation/views/screens/clubs_screen.dart';

part 'routes.g.dart';

/// This file contains the route definitions for the clubs feature of the app.
/// It uses the `go_router` package to define the routes and their corresponding screens.
@TypedGoRoute<ClubsRouteData>(path: '/')
class ClubsRouteData extends GoRouteData {
  const ClubsRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ClubsScreen();
}

@TypedGoRoute<ClubDetailsRouteData>(path: '/club-details')
class ClubDetailsRouteData extends GoRouteData {
  const ClubDetailsRouteData({required this.id, required this.name});

  final int id;
  final String name;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      ClubDetailsScreen(id: id, name: name);
}
