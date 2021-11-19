import 'package:flutter/material.dart';
import 'package:newomal/constants.dart';
import 'package:newomal/localization/localization_constants.dart';
import 'package:newomal/main.dart';
import 'package:newomal/widgets/language.dart';

AppBar homeAppBar(context) {
  void _changeLanguage(Language language) async {
    Locale _locale = await setLocale(language.languageCode);
    Omal.setLocale(context, _locale);
  }

    return AppBar(
      automaticallyImplyLeading: false,
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
      ),
      actions: <Widget> [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButton<Language>(
            underline: const SizedBox(),
            icon: const Icon(
              Icons.language,
              color: Colors.white,
            ),
            onChanged: (language) {
              _changeLanguage(language!);
            },
            items: Language.languageList()
                .map<DropdownMenuItem<Language>>(
                  (e) => DropdownMenuItem<Language>(
                    value: e,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          e.flag,
                          style: const TextStyle(fontSize: 30),
                        ),
                        Text(e.name)
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ]

    );
  }