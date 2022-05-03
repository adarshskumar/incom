import 'package:flutter/material.dart';
import 'package:incom/constants.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 7),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      width: size.width * 0.83,
      decoration: BoxDecoration(
        color: kTextFieldColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}
