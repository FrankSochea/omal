import 'package:flutter/material.dart';
import 'package:newomal/routes.dart';

void main() {
  runApp(const Omal());
}

class Omal extends StatelessWidget {
  const Omal({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => "Omal App",
      initialRoute: RouteGenerator.homeScreen,
      onGenerateRoute: RouteGenerator
          .generateRoute,
          // Hides the debug stripe on the top-right corner //
          // which might be annoying to see!
          debugShowCheckedModeBanner: false,
    );
  }
}
