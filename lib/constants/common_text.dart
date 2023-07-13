import 'package:flutter/material.dart';

class CommonText extends StatefulWidget {
  final String headText;
  final String text;
  final double fontSize;
  final bool colorBool;

  const CommonText(
      {Key? key,
      required this.headText,
      required this.text,
      this.colorBool = false,
      this.fontSize = 16})
      : super(key: key);

  @override
  State<CommonText> createState() => _CommonTextState();
}

class _CommonTextState extends State<CommonText> {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: widget.headText+", ",
            style: const TextStyle(
              color: Colors.blue,
              fontSize:18,
            ),
          ),
          TextSpan(
            text: widget.text,
            style: const TextStyle(
              color: Colors.black45,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
