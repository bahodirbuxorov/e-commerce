
import 'package:flutter/material.dart';
import '../../../core/constants/color.dart';
import '../../../core/route/rout_names.dart';
import '../widgets/arrow.dart';
import '../widgets/custom_button.dart';
import '../widgets/log_in_forms.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.mainColor,
      body: Padding(
        padding: const EdgeInsets.only(
          right: 20,
          left: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 200),
              Arrow(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    RouteNames.signInEmail,
                  );
                },
                imgURL: "assets/icons/back_arrow.png",
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Create Account",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LogInForms(
                      text: "First Name",
                      hideText: false,
                    ),
                    LogInForms(
                      text: "Last Name",
                      hideText: false,
                    ),
                    LogInForms(
                      text: "Email Address",
                      hideText: false,
                    ),
                    LogInForms(
                      text: "Password",
                      hideText: true,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              CustomButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.logInAbout);
                  },
                  text: "Continue"),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text(
                    "You hava a account ?",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteNames.signInEmail);
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white, // Sets the text color
                      textStyle: const TextStyle(
                        fontSize: 16, // Example for font size (optional)
                        fontWeight:
                            FontWeight.bold, // Example for bold text (optional)
                      ),
                    ),
                    child: const Text(
                      "I already have",
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
