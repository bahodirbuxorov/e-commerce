import 'package:flutter/material.dart';

class FilterButtonsSlider extends StatelessWidget {
  final List<String> labels;
  final List<VoidCallback> actions;

  const FilterButtonsSlider({
    super.key,
    required this.labels,
    required this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(labels.length, (index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF8E6CEF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: actions[index],
              child: Row(
                children: [
                  Text(
                    labels[index],
                    style: const TextStyle(color: Colors.white),
                  ),
                  const Icon(Icons.arrow_drop_down, color: Colors.white),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
