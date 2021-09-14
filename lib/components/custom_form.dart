import 'package:flutter/material.dart';
import 'package:login/components/custom_text_form_field.dart';
import 'package:login/size.dart';

class CustomForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            CustomTextFormFiled("Email"),
            SizedBox(
              height: medium_gap,
            ),
            CustomTextFormFiled("Password"),
            SizedBox(
              height: medium_gap,
            ),
            TextButton(onPressed: () {
              if (_formKey.currentState!.validate()) {
                Navigator.pushNamed(context, "home");
              }
            }, child: Text("login"))
          ],
        ));
  }
}
