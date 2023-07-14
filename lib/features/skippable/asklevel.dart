import 'package:collegenepal/constants/custom_button.dart';
import 'package:collegenepal/constants/global_variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../auth/signupPage.dart';

class AskLevel extends StatefulWidget {
  static const String routeName = '/ask-level';

  AskLevel({Key? key}) : super(key: key);

  @override
  State<AskLevel> createState() => _AskLevelState();
}

class _AskLevelState extends State<AskLevel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 150),
        child: Column(
          children: [
            Image.asset('assets/logo.png'),
            SizedBox(
              height: 15,
            ),
            Text(
              'In which course are you intersted in?',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            SizedBox(height: 20),
            CustomButton(
                text: '+2',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => SignupScreen(
                                text: "+2",
                                academicDetails: GlobalVariables.plusTwoDetails,
                              ))));
                  // Navigator.pushNamed(context, SignupScreen.routeName);
                }),
            SizedBox(
              height: 20,
            ),
            CustomButton(
                text: 'Bachelors',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => SignupScreen(
                                text: "Undergraduate",
                                academicDetails:
                                    GlobalVariables.bachelorsDetails,
                              ))));
                }),
            SizedBox(
              height: 20,
            ),
            CustomButton(
                text: 'Masters',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => SignupScreen(
                                text: "Graduate",
                                academicDetails: GlobalVariables.mastersDetails,
                              ))));
                }),
          ],
        ),
      ),
    );
  }
}
