import 'package:flutter/material.dart';

import '../../constants/custom_button.dart';
import '../../constants/custom_textfields.dart';
import '../../constants/password_textfields.dart';

class SignupScreen extends StatefulWidget {
  static const String routeName = '/signup-screen';
  //accessing list of courses from global variables
  final List<String> academicDetails;
  final String text;

  const SignupScreen({
    Key? key,
    required this.academicDetails,
    required this.text,
  }) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  // final AuthService authService = AuthService();
  final _signUpFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _fullnameNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  String category = 'Year1';
  late String facultyValue;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.academicDetails);
    facultyValue = widget.academicDetails[0];
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _fullnameNameController.dispose();
    _phoneNumberController.dispose();
  }

  // void signUpUser() {
  //   // authService.signUpUser(
  //     context: context,
  //     email: _emailController.text,
  //     password: _passwordController.text,
  //     firstName: _firstNameController.text,
  //     lastName: _lastNameController.text,
  //     faculty: facultyValue,
  //     group: _groupController.text.toUpperCase(),
  //     year: category,
  //   );
  // }

  List<String> facultyCategories = [
    'Computing',
    'Multimedia',
    'Networking',
  ];

  bool loader = true;

  // Future<void> runMethodForDuration() async {
  //   setState(() {
  //     loader = false;
  //   });
  //   await Future.delayed(const Duration(seconds: 1));
  //   signUpUser();
  //   setState(() {
  //     loader = true;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create a New Account"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Form(
              key: _signUpFormKey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Registration for ${widget.text} students',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomTextField(
                      controller: _fullnameNameController,
                      hintText: "Full Name"),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                      controller: _phoneNumberController,
                      hintText: "Phone Number"),
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
                    hintText: "Password",
                    obText: true,
                    label: "Password",
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 55,
                    width: double.infinity,
                    padding: const EdgeInsets.only(
                      right: 10,
                      left: 10,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                            color: Colors.black38,
                            width: 1,
                            style: BorderStyle.solid)),
                    child: DropdownButton(
                      isExpanded: true,
                      elevation: 0,
                      value: facultyValue,
                      borderRadius: BorderRadius.circular(10),
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: widget.academicDetails.map((String item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(
                            item,
                            style: TextStyle(color: Colors.black54),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newVal) {
                        setState(() {
                          facultyValue = newVal!;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  CustomButton(
                    text: "Sign Up",
                    loader: loader,
                    onTap: () {
                      if (_signUpFormKey.currentState!.validate()) {
                        // runMethodForDuration();
                      }
                    },
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
