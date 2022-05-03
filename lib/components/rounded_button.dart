import 'package:flutter/material.dart';
import 'package:incom/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  void Function() press;
  final Color color, textColor;
   RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = kMainColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: 204.55,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: newElevatedButton(),
      ),
    );
  }

  //Used:ElevatedButton as FlatButton is deprecated.
  //Here we have to apply customizations to Button by inheriting the styleFrom

  Widget newElevatedButton() {
    return ElevatedButton(
      child: Text(
        text,
        style: TextStyle(color: textColor,fontWeight: FontWeight.bold, fontSize: 16),
      ),
      onPressed: press,
      style: ElevatedButton.styleFrom(
          primary: color,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          textStyle: TextStyle(
              color: textColor, fontSize: 14, fontWeight: FontWeight.w500)),
    );
  }
}
