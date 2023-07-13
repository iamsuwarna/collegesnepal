import 'package:flutter/material.dart';

import '../constants/global_variables.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // color: const Color.fromRGBO(242, 244, 255, 1),
      child: Drawer(
        backgroundColor: const Color.fromRGBO(242, 244, 255, 1),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              Container(
                color: GlobalVariables.mainColor,
                child: const ListTile(
                  title: Text(
                    "Colleges Nepal",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
              ),
              const Divider(
                height: 3,
                thickness: 3,
              ),
              const ListTile(
                leading: Icon(Icons.newspaper),
                title: Text(
                  "University",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.newspaper),
                title: Text(
                  "College",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.newspaper),
                title: Text(
                  "Programs",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.newspaper),
                title: Text(
                  "Popular Colleges",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.newspaper),
                title: Text(
                  "Entrance Classes",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.newspaper),
                title: Text(
                  "Syllabus",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.newspaper),
                title: Text(
                  "Others",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.newspaper),
                title: Text(
                  "Advertise With Us",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
