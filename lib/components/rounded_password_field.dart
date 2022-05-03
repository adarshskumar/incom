import 'package:flutter/material.dart';
import 'package:incom/components/text_field_container.dart';
import 'package:incom/constants.dart';


class RoundedPasswordField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: kMainColor,
        decoration:  InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: kHintTextColor),
          // icon: Icon(
          //   Icons.lock,
          //   color: kMainColor,
          // ),
          suffixIcon: const Icon(
            Icons.visibility,
            color: kHintTextColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
