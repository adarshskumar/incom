import 'package:flutter/material.dart';
import 'package:incom/components/text_field_container.dart';
import 'package:incom/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  // final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    // this.icon = Icons.person,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: kTextFieldColor,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: kHintTextColor),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
