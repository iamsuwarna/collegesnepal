import 'package:flutter/material.dart';
import '../../constants/custom_button.dart';
import '../../constants/custom_textfields.dart';

class ApplyNow extends StatefulWidget {
  static const String routeName = '/applynow-screen';
  const ApplyNow({Key? key}) : super(key: key);
  @override
  State<ApplyNow> createState() => _ApplyNowState();
}

class _ApplyNowState extends State<ApplyNow> {
  final _provideFeedbackFormKey = GlobalKey<FormState>();
  final _userEmailController = TextEditingController();
  final _feedbackTypeController = TextEditingController();
  final _descriptionController = TextEditingController();
  // final FeedbackService feedbackService = FeedbackService();
  String category = "Message";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _feedbackTypeController.text = category;
  }

  _setCategory(String newCategory) {
    setState(() {
      category = newCategory;
      _feedbackTypeController.text = category;
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _descriptionController.dispose();
    _feedbackTypeController.dispose();
    _userEmailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //String id = Provider.of<UserProvider>(context).user.id;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Get in Touch"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Form(
                key: _provideFeedbackFormKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Full Name",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomTextField(
                        controller: _userEmailController, hintText: "Name"),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Email Address",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomTextField(
                        controller: _userEmailController, hintText: "Email"),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Phone Number",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomTextField(
                        controller: _userEmailController,
                        hintText: "Phone Number"),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Program Intersted In",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomTextField(
                        controller: _userEmailController, hintText: "Program"),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Your Message",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomTextField(
                      controller: _descriptionController,
                      hintText: "Message Description",
                      maxLines: 5,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "College",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomTextField(
                      controller: _userEmailController,
                      hintText: 'College',
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomButton(
                      text: "Submit",
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
