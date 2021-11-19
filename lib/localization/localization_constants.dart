
import 'package:flutter/material.dart';
import 'package:newomal/localization/app_localization.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String languageCODE = 'languageCode';

//languages code
const String english = 'en';
const String khmer = 'km';
const String chinese = 'zh';

Future<Locale> setLocale(String languageCode) async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  await _prefs.setString(languageCODE, languageCODE);
  return _locale(languageCode);
}

Future<Locale> getLocale() async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  String languageCode = _prefs.getString(languageCODE) ?? "km";
  return _locale(languageCode);
}

Locale _locale(String languageCode) {
  switch (languageCode) {
    case english:
      return const Locale(english, 'US');
    case khmer:
      return const Locale(khmer, "KH");
    case chinese:
      return const Locale(chinese, "CN");

    default:
      return const Locale(english, 'US');
  }
}

String getTranslated(BuildContext context, String key) {
  return AppLocalization.of(context)!.translate(key);
}