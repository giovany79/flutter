import 'package:flutter/material.dart';
import 'package:weinflu_app/config/app_routes.dart';
import 'package:weinflu_app/pages/login_page.dart';
import 'pages/home_page.dart';
import 'design/themes.dart';

class WeinFluApp extends StatelessWidget {
  const WeinFluApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: WeinFluThemes.defaultTheme,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case AppRoutes.login:
            return MaterialPageRoute(builder: (context) => const LoginPage());
          default:
            return MaterialPageRoute(builder: (context) => const HomePage());
        }
      },
      //routes: {
      //  AppRoutes.home: (context) => const HomePage(),
      //  AppRoutes.login: (context) => const LoginPage(),
      //},
    );
  }
}
