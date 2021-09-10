import 'package:flutter/material.dart';

class TextInputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: TextFormField(
        expands: true,
        maxLines: null,
        textAlignVertical: TextAlignVertical.top,
        decoration: InputDecoration(
          hintText: "bla bla",
          hintStyle: TextStyle(color: Colors.grey.shade400),
          fillColor: Colors.amber,
          alignLabelWithHint: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
        ),
      ),
    );
  }
}
