import 'package:flutter/material.dart';

import '../../widgets/dropDown.dart';
import '../../widgets/selection_button.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 80,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Tell us about yourself",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Who do you shop for?",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: SelectionButton(
                  options: const ["Men", "Women"],
                  initialIndex: 0,
                  onSelectionChanged: (int index) {},
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              const Text(
                "How old are you?",
                style: TextStyle(fontSize: 16),
              ),
              const Center(
                child: AgeRangeDropdown(),
              ),
              const SizedBox(
                height: 450,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {

                      Navigator.pushNamed(context, '/home-page');

                  },

                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(400, 50),
                    backgroundColor: Colors.deepPurple,
                  ),
                  child: const Text(
                    'Finish',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}
