import 'package:collegenepal/constants/custom_button.dart';
import 'package:collegenepal/constants/exp_tile.dart';
import 'package:collegenepal/constants/global_variables.dart';
import 'package:flutter/material.dart';

import '../../constants/category_dart.dart';

class NewPage extends StatefulWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  String category = "BCA";

  _setCategory(String newCategory) {
    setState(() {
      category = newCategory;
      // _feedbackTypeController.text=category;
    });
  }

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 45,
                color: GlobalVariables.backColor,
                width: double.infinity,
                child: const Center(
                  child: Text(
                    "ADMISSION OPEN",
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
              ExpTile(text: "BCA"),
              ExpTile(text: "BIT"),
              ExpTile(text: "BHM"),
              ExpTile(text: "BBA"),
              ExpTile(text: "BIM"),
              ExpTile(text: "BBM"),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 45,
                color: GlobalVariables.backColor,
                width: double.infinity,
                child: const Center(
                  child: Text(
                    "Find Colleges by Program",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Wrap(
                alignment: WrapAlignment.spaceEvenly,
                crossAxisAlignment: WrapCrossAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      _setCategory('BCA');
                    },
                    child: CategoryCard(
                      categoryText: 'BCA',
                      isActive: category == 'BCA',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _setCategory('BHM');
                    },
                    child: CategoryCard(
                      categoryText: 'BHM',
                      isActive: category == 'BHM',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _setCategory('BBM');
                    },
                    child: CategoryCard(
                      categoryText: 'BBM',
                      isActive: category == 'BBM',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _setCategory('BBA');
                    },
                    child: CategoryCard(
                      categoryText: 'BBA',
                      isActive: category == 'BBA',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _setCategory('BE Computer');
                    },
                    child: CategoryCard(
                      categoryText: 'BE Computer',
                      isActive: category == 'BE Computer',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _setCategory('BIM');
                    },
                    child: CategoryCard(
                      categoryText: 'BIM',
                      isActive: category == 'BIM',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _setCategory('MBA');
                    },
                    child: CategoryCard(
                      categoryText: 'MBA',
                      isActive: category == 'MBA',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _setCategory('BIT');
                    },
                    child: CategoryCard(
                      categoryText: 'BIT',
                      isActive: category == 'BIT',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _setCategory('BTTM');
                    },
                    child: CategoryCard(
                      categoryText: 'BTTM',
                      isActive: category == 'BTTM',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _setCategory('BSW');
                    },
                    child: CategoryCard(
                      categoryText: 'BSW',
                      isActive: category == 'BSW',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              CustomButton(
                text: "Explore Programs",
                onTap: () {},
                color: GlobalVariables.secondaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
