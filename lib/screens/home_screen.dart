import 'package:flutter/material.dart';
import 'package:newomal/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Omal Cambodia"), actions: [
        IconButton(
          icon: const Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.info),
          ),
          onPressed: () {},
        ),
      ]),
      drawer: Drawer(
          child: ListView(children: [
        ListTile(
          leading: const Icon(Icons.people),
          title: const Text("Item 1"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.train),
          title: const Text("Item 2"),
          onTap: () {},
        )
      ])),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        selectedItemColor: Colors.amber,
        onTap: (int index) {},
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home page"),
          BottomNavigationBarItem(
            icon: Icon(Icons.email),
            label: "E-mail",
          ),
        ],
      ),
      body: Center(
        child: TextButton(
          onPressed: () =>
              Navigator.of(context).pushNamed(RouteGenerator.homeScreen),
          child: const Text("Home Screen"),
        ),
      ),
    );
  }
}
