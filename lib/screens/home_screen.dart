import 'package:flutter/material.dart';
import 'package:newomal/localization/localization_constants.dart';
import 'package:newomal/routes.dart';
import 'package:newomal/widgets/category_item.dart';
import 'package:newomal/widgets/home_app_bar.dart';
import 'package:newomal/widgets/item_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: homeAppBar(context),
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
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: getTranslated(context, "home_label")),
          BottomNavigationBarItem(
            icon: const Icon(Icons.email),
            label: getTranslated(context, "email_label"),
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
              children:  <Widget>[
                 ItemList(
                   srcSvg: "assets/images/frank-sochea-flutter.svg",
                   title: "[Flutter] Mobile App Development",
                   trainer: "Frank Sochea",
                   rating: 4.7,
                   press: () { Navigator.of(context).pushNamed(RouteGenerator.itemDetailScreen); },
                 ),
                 ItemList(
                   srcSvg: "assets/images/drupal-training.svg",
                   title: "[Drupal] Content Management System",
                   trainer: "Drupal Trainer",
                   rating: 4.8,
                   press: () {},
                 ),
                 ItemList(
                   srcSvg: "assets/images/nodejs-training.svg",
                   title: "[Nodejs] Scalable Network Applications",
                   trainer: "Frank Sochea",
                   rating: 4.9,
                   press: () {},
                 )
              ],
            ),
          )
        ],
      ),
    );
  }


}


