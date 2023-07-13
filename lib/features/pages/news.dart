import 'package:flutter/material.dart';

import '../../constants/global_variables.dart';
import '../../drawer/app_drawer.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const AppDrawer(),
      drawerEnableOpenDragGesture: false,
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
            IconButton(
              icon: const Icon(
                Icons.menu_rounded,
                size: 30,
              ),
              onPressed: () {
                _scaffoldKey.currentState?.openDrawer();
              },
            ),
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
                  "NEWS",
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
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: GlobalVariables.newsData.length,
                  itemBuilder: (context, index) {
                    final data = GlobalVariables.newsData[index];
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "• $data",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}



