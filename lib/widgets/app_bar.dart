import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';


PreferredSizeWidget buildAppBar(String selectedCategory, ValueChanged<String?> onChanged) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(90),
    child: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),

            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF322654),
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: selectedCategory,
                  dropdownColor: const Color(0xFF322654),
                  icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                  onChanged: onChanged,
                  items: ['Men', 'Women'].map((value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  menuMaxHeight: 200,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF8E6CEF),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.all(10),
              child: const Icon(
                IconlyBroken.bag,
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