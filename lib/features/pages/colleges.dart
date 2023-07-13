import 'package:flutter/material.dart';

import '../../constants/global_variables.dart';

class CollegePage extends StatefulWidget {
  const CollegePage({Key? key}) : super(key: key);

  @override
  State<CollegePage> createState() => _CollegePageState();
}

class _CollegePageState extends State<CollegePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset(
              "assets/logo2.jpg",
              width: 50,
              height: 50,
            ),
            const SizedBox(
              width: 5,
            ),
            const Text("Colleges Nepal"),
            const SizedBox(
              width: 20,
            ),
            Container(
              color: Colors.grey,
              child: const Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 17,
            ),
            const Icon(
              Icons.menu,
              size: 28,
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              height: 45,
              color: GlobalVariables.backColor,
              width: double.infinity,
              child: const Center(
                child: Text(
                  "EXPLORE COLLEGES AND DEGREE",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1,
                ),
                itemCount: GlobalVariables.collegeData.length,
                // itemCount: 1,
                itemBuilder: (context, index) {
                  final program = GlobalVariables.collegeData[index];
                  final programName = program['programName'];
                  final totalNumber = program['totalNumber'];
                  bool isODD = false;
                  if (index % 2 == 0) {
                    isODD = false;
                  } else {
                    isODD = true;
                  }

                  return !isODD
                      ? Card(
                          color: GlobalVariables.backColor,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                programName,
                                style: const TextStyle(color: Colors.blue),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                totalNumber,
                                style: const TextStyle(color: Colors.black54),
                              ),
                            ],
                          ),
                        )
                      : Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                programName,
                                style: const TextStyle(color: Colors.blue),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                totalNumber,
                                style: const TextStyle(color: Colors.black54),
                              ),
                            ],
                          ),
                        );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
