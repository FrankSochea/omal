import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:newomal/localization/app_localization.dart';
import 'package:newomal/localization/localization_constants.dart';
import 'package:newomal/routes.dart';

void main() {
  runApp(const Omal());
}

class Omal extends StatefulWidget {
  const Omal({Key? key}) : super(key: key);

  static void setLocale(BuildContext context, Locale locale){
    _OmalState? state = context.findAncestorStateOfType<_OmalState>();
    state!.setLocale(locale);
  }

  @override
  State<Omal> createState() => _OmalState();
}

class _OmalState extends State<Omal> {

  Locale? _locale;

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() {
    getLocale().then((locale) {
      setState(() {
        _locale = locale;
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {

    if(_locale == null){
      return const Center(
          child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue)),
        );
    }else {
      return MaterialApp(
        onGenerateTitle: (context) => "Omal App",
        initialRoute: RouteGenerator.homeScreen,
        onGenerateRoute: RouteGenerator
            .generateRoute,
            // Hides the debug stripe on the top-right corner //
            // which might be annoying to see!
        debugShowCheckedModeBanner: false,

        // Set Localization
        locale: _locale,
        supportedLocales: const [
          Locale('en', 'US'),
          Locale('km', 'KH'),
          Locale('zh', 'CN'),
        ],
        localizationsDelegates: const [
            AppLocalization.delegate,
            // Global localization delegates provice localized
            // strings and other values for the Material and
            // Cupertino libraries. They support 70+ locales!
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
        ],
        localeResolutionCallback: (deviceLocale, supportedLocales) {
          for(var locale in supportedLocales) {
            if(locale.languageCode == deviceLocale!.languageCode && locale.countryCode == deviceLocale.countryCode){
              return deviceLocale;
            }
          }

          return supportedLocales.first;
        }
      );

    }
  }
}
