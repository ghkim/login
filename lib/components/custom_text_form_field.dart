import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/size.dart';

class CustomTextFormFiled extends StatelessWidget {
  final String text;

  const CustomTextFormFiled(this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          this.text,
        ),
        SizedBox(
          height: small_gap,
        ),
        TextFormField(
          validator: (v) => v!.isEmpty ? "Please enter some $text" : null,
          obscureText: text == "Password" ? true : false,
          decoration: InputDecoration(
              hintText: "Enter $text",
              enabledBorder:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              focusedBorder:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              errorBorder:
                  OutlineInputBorder(borderRadius: BorderRadius.horizontal()),
              focusedErrorBorder:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
        )
      ],
    );
  }
}
