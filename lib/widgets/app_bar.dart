import 'package:flutter/material.dart';

PreferredSizeWidget buildAppBar(String selectedCategory, ValueChanged<String?> onChanged) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(90),
    child: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Avatar
            const CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
            // Dropdown
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF322654),
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: DropdownButton<String>(
                value: selectedCategory,
                dropdownColor: const Color(0xFF322654),
                icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
                underline: const SizedBox(),
                style: const TextStyle(color: Colors.white, fontSize: 16),
                onChanged: onChanged,
                items: ['Men', 'Women'].map((value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF8E6CEF),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.all(10),
              child: const Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
                size: 24,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
