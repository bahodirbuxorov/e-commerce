import 'package:flutter/material.dart';

import '../widgets/filtr_bottomsheet_widget.dart';

void showFilterBottomSheet({
  required BuildContext context,
  required String filterType,
  required List<String> options,
  required String selectedOption,
  required ValueChanged<String> onOptionSelected,
}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return FilterBottomSheet(
        title: filterType,
        options: options,
        selectedOption: selectedOption,
        onOptionSelected: onOptionSelected,
      );
    },
  );
}
