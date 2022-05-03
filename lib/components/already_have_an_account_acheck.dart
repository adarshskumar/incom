import 'package:flutter/material.dart';
import 'package:incom/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  void Function() press;
   AlreadyHaveAnAccountCheck({
    Key? key,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          "Already have an account ? ",
          style: TextStyle(color: kHintTextColor),
        ),
        GestureDetector(
          onTap: press,
          child: const Text(
            'Log in',
            style: TextStyle(
              color: kMainColor,
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      ],
    );
  }
}
