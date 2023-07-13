import 'package:collegenepal/features/home/bottom_bar.dart';
import 'package:flutter/material.dart';

import '../../constants/custom_button.dart';
import '../../constants/custom_textfields.dart';
import '../../constants/password_textfields.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/login-screen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _signInFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
            child: Form(
              key: _signInFormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 50),
                    child: Image.asset(
                      'assets/logo.png',
                    ),
                  ),
                  const Text(
                    'Login with your Account',
                    style: TextStyle(fontSize: 23, color: Colors.black87),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                      controller: _emailController, hintText: "Email"),
                  const SizedBox(
                    height: 15,
                  ),
                  PasswordTextField(
                      controller: _passwordController,
                      label: "Password",
                      hintText: "Password",
                      obText: true),
                  const SizedBox(
                    height: 25,
                  ),
                  CustomButton(
                    text: "Log in",
                    onTap: () {
                      // if (_signInFormKey.currentState!.validate()) {
                      // }

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BottomBar()));
                    },
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 220, top: 5),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.redAccent),
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                    height: 10,
                    thickness: 2,
                    indent: 5,
                    endIndent: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an Account?"),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Sign up now",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
