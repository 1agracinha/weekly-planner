import 'package:flutter/material.dart';

class CustomDropdownWidget extends StatelessWidget {
  dynamic value;
  final List<DropdownMenuItem<dynamic>> items;

  CustomDropdownWidget({required this.items, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        children: [
          DropdownButtonFormField<dynamic>(
              isExpanded: true,
              value: value,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey.shade300),
                ),
              ),
              onChanged: (_value) {
                value = _value;
              },
              items: items)
        ],
      ),
    );
  }
}
