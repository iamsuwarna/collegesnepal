import 'package:collegenepal/features/auth/login_screen.dart';
import 'package:collegenepal/router.dart';
import 'package:flutter/material.dart';

import 'constants/global_variables.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          // scaffoldBackgroundColor: GlobalVariables.backgroundColour,
          colorScheme:
          const ColorScheme.light(primary: GlobalVariables.mainColor),
          appBarTheme: const AppBarTheme(
              elevation: 0, iconTheme: IconThemeData(color: Colors.black))),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const LoginScreen(),
    );
  }
}

