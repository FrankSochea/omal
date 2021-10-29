import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newomal/constants.dart';
import 'package:newomal/widgets/category_item.dart';
import 'package:newomal/widgets/home_app_bar.dart';
import 'package:newomal/widgets/item_list.dart';

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

          ,SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:  Row(
              children: const <Widget>[
                 ItemList(
                   srcSvg: "assets/images/frank-sochea-flutter.svg",
                   title: "[Flutter] Mobile App Development",
                   trainer: "Frank Sochea",
                   rating: 4.7,
                 ),
                 ItemList(
                   srcSvg: "assets/images/drupal-training.svg",
                   title: "[Drupal] Content Management System",
                   trainer: "Drupal Trainer",
                   rating: 4.8,
                 ),
                 ItemList(
                   srcSvg: "assets/images/nodejs-training.svg",
                   title: "[Nodejs] Scalable Network Applications",
                   trainer: "Frank Sochea",
                   rating: 4.9
                 )
              ],
            ),
          )
        ],
      ),
    );
  }


}


