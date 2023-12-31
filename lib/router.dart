import 'package:collegenepal/features/home/bottom_bar.dart';
import 'package:collegenepal/features/skippable/asklevel.dart';
import 'package:flutter/material.dart';
import 'features/auth/login_screen.dart';
import 'features/auth/signupPage.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const LoginScreen());
    case BottomBar.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const BottomBar());

    // case SignupScreen.routeName:
    //   return MaterialPageRoute(
    //       settings: routeSettings, builder: (_) =>  SignupScreen());

    case AskLevel.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => AskLevel());

    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text("Screen Doesn't exist"),
          ),
        ),
      );
  }
}
