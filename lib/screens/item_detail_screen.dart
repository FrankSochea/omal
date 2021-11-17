

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newomal/constants.dart';
import 'package:newomal/routes.dart';

class ItemDetailScreen extends StatelessWidget {
  const ItemDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: oPrimaryColor,
      appBar: AppBar(
        backgroundColor: oPrimaryColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white
          ),
          onPressed: () { Navigator.of(context).pushNamed(RouteGenerator.homeScreen);},
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.share, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more, color: Colors.white),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          //Image Cover
          Image.asset(
            'assets/images/frank-sochea-flutter.png',
            height: size.height * 0.26,
            width: double.infinity,
            fit: BoxFit.fill
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: const <Widget>[
                            Icon(
                              Icons.location_on,
                              color: oSecondaryColor,
                            ),
                            SizedBox(width: 10,),
                            Text("Online"),
                          ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Row(
                            children: <Widget>[
                              //Course's name
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Flutter | Build UIs",
                                      style: Theme.of(context).textTheme.headline6,
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: const <Widget>[
                                        // Star Rating
                                        SizedBox(width: 10),
                                        Text("24 reviews"),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              //Price
                              ClipPath(
                                clipper: PricerCliper(),
                                child: Container(
                                  alignment: Alignment.topCenter,
                                  padding: const EdgeInsets.symmetric(vertical: 15),
                                  height: 65,
                                  width: 65,
                                  color: oPrimaryColor,
                                  child: Text(
                                    "Free",
                                    style: Theme.of(context).textTheme.headline6?.copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                  ),
                  //body text
                  const Text(
                    "Flutter is Google's UI toolkit for building beautiful, natively compiled applications for mobile, web, desktop, and embedded devices from a single codebase.",
                    style: TextStyle(
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: size.height * 0.1),
                  Container(
                    //padding: EdgeInsets.all(20),
                    width: size.width * 0.8,
                    // it will cover 80% of total width
                    decoration: BoxDecoration(
                      color: oPrimaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Icon(
                                Icons.badge,
                              ),
                              SizedBox(width: 10,),
                              Text(
                                "Order Now",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],)
            )
            )
        ],
      ),

  );

  }
}
class PricerCliper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    double ignoreHeight = 20;
    path.lineTo(0, size.height - ignoreHeight);
    path.lineTo(size.width / 2 , size.height);
    path.lineTo(size.width, size.height - ignoreHeight);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

}