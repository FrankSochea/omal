import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newomal/constants.dart';

class ItemList extends StatelessWidget {

  final String srcSvg;
  final String title;
  final String trainer;
  final double rating;
  final Function()? press;

  const ItemList({
    Key? key,
    required this.srcSvg,
    required this.title,
    required this.trainer,
    this.rating = 0.0,
    this.press
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0,4),
            blurRadius: 10,
            color: oPrimaryColor.withOpacity(0.32),
          )
        ]
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(bottom: 1),
                  padding: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: oPrimaryColor.withOpacity(0.01),
                    shape: BoxShape.rectangle
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: SvgPicture.asset(
                      srcSvg,
                      width: size.width * 0.30,
                    ),
                  )
                ),
                SizedBox(
                  width: size.width * 0.30,
                  child: Column(
                    children:  <Widget>[
                       Text(
                        title,
                        style: const TextStyle(color: oPrimaryColor)
                      ),
                      const SizedBox(height: 5,),
                       Text(
                        trainer,
                        style: const TextStyle(fontSize: 12, color: oSecondaryColor),
                      ),
                      const SizedBox(height: 5,),
                      Row(
                        children: <Widget>[
                          Text('$rating', style: const TextStyle(fontSize: 12, color: Colors.amber,)),
                          const SizedBox(width: 3),
                          RatingBarIndicator(
                            rating: rating,
                            itemBuilder: (context, index) => const Icon(Icons.star, color: Colors.amber),
                            itemCount: 5, itemSize: 10.0, direction: Axis.horizontal,
                          )
                        ]
                      )
                    ],
                  ),
                )
              ],
            )
          ),
        ),
      ),
    );
  }
}