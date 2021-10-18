import 'package:flutter/material.dart';
import 'package:newomal/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () =>
              Navigator.of(context).pushNamed(RouteGenerator.homeScreen),
          child: const Text("Click this to open Home Screen"),
        ),
      ),
    );
  }
}
