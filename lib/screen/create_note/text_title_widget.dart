import 'package:flutter/material.dart';

class TextTitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: Text(
        "Bla bla bla bla. BLA bla?",
        style: TextStyle(color: Colors.grey.shade400, fontSize: 26),
      ),
    );
  }
}
