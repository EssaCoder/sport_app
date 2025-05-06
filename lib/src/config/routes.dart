import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sport_app/src/features/clubs/presentation/views/screens/routes.dart'
    as clubs;

/// The navigator key used in the app.
///
/// This is a global key used to access the navigator state of the app.
/// It is used to access the navigator state of the app.
///
///
GlobalKey<NavigatorState>? navigatorKey;

/// The app router used in the app.
///
/// This is a router used to navigate through the app.
/// It is used to navigate through the app.
///
///
final appRouter = GoRouter(
  navigatorKey: navigatorKey,
  debugLogDiagnostics: true,
  initialLocation: const clubs.ClubsRouteData().location,
  routes: [...clubs.$appRoutes],
);
