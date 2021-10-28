import 'package:flutter/material.dart';
import 'package:newomal/constants.dart';

AppBar homeAppBar() {
    return AppBar(
      backgroundColor: oPrimaryColor,
      title: Container(
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: oSecondaryColor,
          borderRadius: BorderRadius.circular(22.0)
        ),
        child: Row(
          children: <Widget>[
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  border: InputBorder.none,
                  hintText: "Search Here",
                  hintStyle: TextStyle(color: oTextLightColor)
                ),
              )
            ),
            Container(
              margin: const EdgeInsets.only(right: 15),
              padding: const EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                color: oPrimaryColor,
                borderRadius: BorderRadius.circular(22)
              ),
              child: IconButton(
                icon: const Icon(Icons.search, color: oTextLightColor,),
                onPressed: () {},
              ),
            )
          ]
        ),
      )

    );
  }