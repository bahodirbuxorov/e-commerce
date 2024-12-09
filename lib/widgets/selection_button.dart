import 'package:flutter/material.dart';

class SelectionButton extends StatefulWidget {
  final List<String> options;
  final Function(int) onSelectionChanged;
  final int initialIndex;

  const SelectionButton({
    super.key,
    required this.options,
    required this.onSelectionChanged,
    this.initialIndex = 0,
  });

  @override
  // ignore: library_private_types_in_public_api
  _SelectionButtonState createState() => _SelectionButtonState();
}

class _SelectionButtonState extends State<SelectionButton> {
  late List<bool> isSelected;

  @override
  void initState() {
    super.initState();
    isSelected = List.generate(
      widget.options.length,
      (index) => index == widget.initialIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(widget.options.length, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),

          child: SizedBox(
            width: 150,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor:
                    isSelected[index] ? Colors.white : Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                backgroundColor:
                    isSelected[index] ? Colors.deepPurple : Colors.grey[200],
                minimumSize: const Size(200, 50),
              ),
              onPressed: () {
                setState(() {
                  for (int i = 0; i < isSelected.length; i++) {
                    isSelected[i] = i == index;
                  }
                });
                widget.onSelectionChanged(index);
              },
              child: Text(widget.options[index]),
            ),
          ),

        );

      }),

    );
  }
}
