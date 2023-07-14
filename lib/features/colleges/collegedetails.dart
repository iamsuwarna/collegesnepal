import 'package:collegenepal/constants/custom_button.dart';
import 'package:collegenepal/constants/global_variables.dart';
import 'package:collegenepal/features/colleges/applynow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CollegeDetails extends StatefulWidget {
  const CollegeDetails({Key? key}) : super(key: key);

  @override
  State<CollegeDetails> createState() => _CollegeDetailsState();
}

class _CollegeDetailsState extends State<CollegeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Colleges for +2 Education')),
        body: ListView.builder(
            itemCount: GlobalVariables.collegedetails.length,
            itemBuilder: (context, index) {
              final program = GlobalVariables.collegedetails[index];
              final collegeName = program['college_name'];
              final address = program['address'];
              final phoneNumber = program['phoneNumber'];
              return Card(
                //margin: EdgeInsets.only(top: 30),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        collegeName,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 25,
                            color: Colors.blueAccent),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        address,
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        phoneNumber,
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomButton(
                        text: 'Apply Now',
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ApplyNow()));
                        },
                        color: GlobalVariables.secondaryColor,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
