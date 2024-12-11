
import 'package:flutter/material.dart';

import '../../../core/constants/color.dart';

class LogInForms extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final String? text;
  final bool hideText;

  LogInForms({
    super.key,
    required this.text,
    required this.hideText
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: TextFormField(
        style: const TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: CustomColor.greyColor,
          labelText: text,
          border: InputBorder.none,
        ),
        obscureText: hideText,
      ),
    );
  }
}
