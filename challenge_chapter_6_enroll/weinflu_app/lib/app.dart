import 'package:flutter/material.dart';
import 'package:weinflu_app/config/app_routes.dart';
import 'package:weinflu_app/pages/login_page.dart';
import 'package:weinflu_app/pages/signin_page.dart';
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
          case AppRoutes.signin:
            return MaterialPageRoute(builder: (context) => const SigninPage());
          case AppRoutes.home:
            return MaterialPageRoute(
                builder: (context) => HomePage(
                      storeName: settings.arguments as String,
                    ));
          default:
            return MaterialPageRoute(builder: (context) => const LoginPage());
        }
      },
      //routes: {
      //  AppRoutes.home: (context) => const HomePage(),
      //  AppRoutes.login: (context) => const LoginPage(),
      //},
    );
  }
}
