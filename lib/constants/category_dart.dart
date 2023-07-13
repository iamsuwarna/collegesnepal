import 'package:flutter/material.dart';

import 'global_variables.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.categoryText,
    required this.isActive,
  }) : super(key: key);

  final String categoryText;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: !isActive
              // ? const Color.fromRGBO(221, 229, 249, 1)
              ? GlobalVariables.mainColor
              : GlobalVariables.secondaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
        child: Text(
          categoryText,
          style: const TextStyle(
            // color: !isActive ? Colors.blue : Colors.white,
            color: Colors.white,
            fontSize: 14,
          ),
        ));
  }
}
