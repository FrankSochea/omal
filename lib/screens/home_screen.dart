import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newomal/constants.dart';
import 'package:newomal/widgets/category_item.dart';
import 'package:newomal/widgets/home_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      // drawer: Drawer(
      //     child: ListView(children: [
      //   ListTile(
      //     leading: const Icon(Icons.people),
      //     title: const Text("Item 1"),
      //     onTap: () {},
      //   ),
      //   ListTile(
      //     leading: const Icon(Icons.train),
      //     title: const Text("Item 2"),
      //     onTap: () {},
      //   )
      // ])),
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
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const <Widget>[
                CategoryItem(
                  icon: 'assets/icons/flutter.svg',
                  title: 'Flutter',
                ),
                CategoryItem(
                  icon: 'assets/icons/nodejs.svg',
                  title: 'Nodejs',
                ),
                CategoryItem(
                  icon: 'assets/icons/laravel.svg',
                  title: 'Laravel',
                  isActive: true,
                ),
                CategoryItem(
                  icon: 'assets/icons/drupal.svg',
                  title: 'Drupal',
                ),
                CategoryItem(
                  icon: 'assets/icons/figma.svg',
                  title: 'Figma',
                )
              ],
            )
          )
        ],
      ),
    );
  }


}
