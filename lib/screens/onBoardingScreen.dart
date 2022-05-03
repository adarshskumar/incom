import 'package:flutter/material.dart';
import 'package:incom/components/rounded_button.dart';
import 'package:incom/constants.dart';
import 'package:incom/helpers/screen_navigation.dart';
import 'package:incom/screens/signup.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 60,
              ),
              Image.asset(
                'assets/logo.png',
                width: 260,
              ),
              RoundedButton(
                  text: 'Get Started',
                  press: () {
                    return changeScreen(context, SignUp());
                  }),
              // Container(
              //     // width: size.width * 0.53,
              //     child: ClipRRect(
              //       borderRadius: BorderRadius.circular(100),
              //       child: FlatButton(
              //         padding: EdgeInsets.symmetric(horizontal:60 ,vertical: 14,),
              //         color: kMainColor,
              //         onPressed: () {},
              //         child: const Text(
              //           'Get Started',
              //           style: TextStyle(
              //             color: Colors.white,
              //             fontWeight: FontWeight.w600,
              //             fontSize: 17,
              //           ),
              //         ),
              //       ),
              //     )),
              Text(
                'Made in Kerala with ❤️',
                style: TextStyle(color: kMainColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
