import 'package:flutter/material.dart';

class CardCreateNoteWidget extends StatelessWidget {
  final List<Widget> widgets;
  const CardCreateNoteWidget({required this.widgets});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(blurRadius: 5, color: Color(0xffE4ADF8), offset: Offset(2, 2))
      ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: widgets,
      ),
    );
  }
}
