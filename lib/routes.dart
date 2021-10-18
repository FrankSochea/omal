import 'package:flutter/material.dart';
import 'package:newomal/screens/home_screen.dart';

// 1.
class RouteGenerator {
// 2.
static const String homeScreen = '/';
// 3.
RouteGenerator._();
// 3.
static Route<dynamic> generateRoute(RouteSettings settings) {
  //4.
  switch (settings.name) {
    case homeScreen:
      // .5
      return MaterialPageRoute(
        builder: (_) => const HomeScreen(),
      );

    default:
    throw const FormatException("Route not found");
  }
}
}
// 5.
class RouteException implements Exception {
  final String message;
  const RouteException( this.message);
}