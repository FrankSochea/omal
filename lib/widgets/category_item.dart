import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newomal/constants.dart';

class CategoryItem extends StatelessWidget {

  final String title;
  final String icon;
  final bool isActive;
  final Function()? press;

  const CategoryItem({
    Key? key,
    required this.title,
    required this.icon,
    this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: <Widget>[
              SvgPicture.asset(
                icon, width: 32, height: 32,
              ),
               Text(
                title,
                style: isActive
                  ? const TextStyle(
                            color: oPrimaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 12
                          )
                  : const TextStyle(fontSize: 12, color: oSecondaryColor)
              ),
              if(isActive)
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 2),
                    height: 3,
                    width: 22,
                    decoration: BoxDecoration(
                      color: oPrimaryColor,
                      borderRadius: BorderRadius.circular(10)
                    ),
                  )
          ],
        )
      ),
    );
  }
}