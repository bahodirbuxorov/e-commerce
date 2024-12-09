// ignore: file_names

import 'package:flutter/material.dart';

class AgeRangeDropdown extends StatefulWidget {
  const AgeRangeDropdown({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AgeRangeDropdownState createState() => _AgeRangeDropdownState();
}

class _AgeRangeDropdownState extends State<AgeRangeDropdown> {
  String? selectedValue;
  final List<String> ageRanges = ["18-24", "25-34", "35-44", "45-54", "55+"];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(

          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(30),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(

            value: selectedValue,
            hint: const Text(
              "Age Range",
              style: TextStyle(color: Colors.black),
            ),
            icon: const Icon(Icons.arrow_drop_down),
            isExpanded: true,
            items: ageRanges.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                selectedValue = newValue;
              });
            },
          ),
        ),
      ),
    );
  }
}
