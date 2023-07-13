import 'package:collegenepal/features/pages/new_page.dart';
import 'package:collegenepal/features/pages/news.dart';
import 'package:flutter/material.dart';

import '../../constants/global_variables.dart';
import '../pages/colleges.dart';

class BottomBar extends StatefulWidget {
  static const String routeName = '/actual-home';

  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;

  double bottomBarWidth = 42;
  double bottombarBordersWidth = 5;

  List<Widget> pages = [
    const NewPage(),
    const CollegePage(),
    const NewsPage(),
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        selectedItemColor: GlobalVariables.mainColor,
        unselectedItemColor: GlobalVariables.unselectedNavBarColor,
        backgroundColor: GlobalVariables.backgroundColour,
        iconSize: 28,
        onTap: updatePage,
        items: [
          //for home
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                color: _page == 0
                    ? GlobalVariables.mainColor
                    : GlobalVariables.backgroundColour,
                width: bottombarBordersWidth,
              ))),
              child: const Icon(Icons.add),
            ),
            label: 'Admissions',
          ),
          //for Project
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                color: _page == 1
                    ? GlobalVariables.mainColor
                    : GlobalVariables.backgroundColour,
                width: bottombarBordersWidth,
              ))),
              child: const Icon(Icons.menu_book_rounded),
            ),
            label: 'Colleges',
          ),
          //for home
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                color: _page == 2
                    ? GlobalVariables.mainColor
                    : GlobalVariables.backgroundColour,
                width: bottombarBordersWidth,
              ))),
              child: const Icon(Icons.library_books),
            ),
            label: 'News',
          ),
        ],
      ),
    );
  }
}

//from new branch Kishor
