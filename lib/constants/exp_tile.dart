import 'package:flutter/material.dart';

import 'common_text.dart';
import 'global_variables.dart';

class ExpTile extends StatefulWidget {
  final String text;

  const ExpTile({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpTile> createState() => _ExpTileState();
}

class _ExpTileState extends State<ExpTile> {
  bool expanded = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: GlobalVariables.backColor,
        border: Border(
          bottom: BorderSide(
            color: Colors.black26,
            width: 1,
          ),
        ),
      ),
      width: double.infinity,
      child: ExpansionTile(
        trailing: Icon(
          expanded ? Icons.add : Icons.remove,
        ),
        onExpansionChanged: (value) {
          if (value) {
            setState(() {
              expanded = false;
            });
          } else {
            setState(() {
              expanded = true;
            });
          }
        },
        title: Text(widget.text),
        childrenPadding: const EdgeInsets.only(left: 15, bottom: 10),
        expandedAlignment: Alignment.centerLeft,
        children: const [
          CommonText(
            headText: "Divya Gyan College",
            text: "Putalisadak",
          ),
          SizedBox(
            height: 3,
          ),
          CommonText(
            headText: "Divya Gyan College",
            text: "Putalisadak",
          ),
          SizedBox(
            height: 3,
          ),
          CommonText(
            headText: "Divya Gyan College",
            text: "Putalisadak",
          ),
          SizedBox(
            height: 3,
          ),
          CommonText(
            headText: "Divya Gyan College",
            text: "Putalisadak",
          ),
          SizedBox(
            height: 3,
          ),
          CommonText(
            headText: "Divya Gyan College",
            text: "Putalisadak",
          ),
          SizedBox(
            height: 3,
          ),
          CommonText(
            headText: "Divya Gyan College",
            text: "Putalisadak",
          ),
          SizedBox(
            height: 3,
          ),
        ],
      ),
    );
  }
}
