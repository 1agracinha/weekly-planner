import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomButtonWidget({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Container(
          decoration:
              BoxDecoration(border: Border.all(color: Color(0xff8600A8))),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Center(
                child: Text(
              text,
              style: TextStyle(
                  color: Color(0xff8600A8), fontWeight: FontWeight.bold),
            )),
          ),
        ));
  }
}
