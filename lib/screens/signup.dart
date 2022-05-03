import 'dart:math';
import 'package:flutter/material.dart';
import 'package:incom/components/already_have_an_account_acheck.dart';
import 'package:incom/components/rounded_button.dart';
import 'package:incom/components/rounded_input_field.dart';
import 'package:incom/components/rounded_password_field.dart';
import 'package:incom/constants.dart';
import 'package:incom/helpers/screen_navigation.dart';
import 'package:incom/screens/login.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  final List imageList = [
    "assets/signup2.png",
    "assets/signup3.png",
    "assets/signup1.png",
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: size.width,
                height: size.width,
                child: Stack(alignment: Alignment.center, children: [
                  // CircleAvatar(
                  //   backgroundColor: Colors.grey.withOpacity(0.5),
                  //   radius: size.width * 0.35,
                  // ),
                  DownloadsImageWidget(
                      imageList: imageList[1],
                      margin: const EdgeInsets.only(right: 140, top: 70),
                      angle: 0,
                      size: Size(size.width * 0.50, size.width * 0.60)),
                  DownloadsImageWidget(
                      imageList: imageList[0],
                      margin: const EdgeInsets.only(left: 100, top: 0),
                      angle: 0,
                      size: Size(size.width * 0.63, size.width * 0.75)),
                  DownloadsImageWidget(
                      radius: 10,
                      imageList: imageList[2],
                      margin: const EdgeInsets.only(bottom: 5, top: 230),
                      size: Size(size.width * 0.4, size.width * 0.50)),
                ]),
              ),
              const Text(
                "Sign Up",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
              ),
              const SizedBox(height: 15,),
              RoundedInputField(
                hintText: " Mobile Number",
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                hintText: ' Password',
                onChanged: (value) {},
              ),
              const SizedBox(height: 3,),
              SizedBox(
                width: size.width*0.75,
                child: Row(
                  children: const [
                    Icon(Icons.check_box_outline_blank, color: kHintTextColor,),
                    Text(
                      ' I agree to the ',
                      style: TextStyle(
                        color: kHintTextColor,
                      ),
                    ),
                    Text(
                      'Privacy Policy',
                      style: TextStyle(
                        color: kMainColor,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30,),
              RoundedButton(
                text: "Sign Up",
                press: () {},
              ),
              const SizedBox(height: 50,),
              AlreadyHaveAnAccountCheck(
                press: () {
                    changeScreen(context, LogIn());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    Key? key,
    required this.imageList,
    this.angle = 0,
    required this.margin,
    required this.size,
    this.radius = 10,
  }) : super(key: key);

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: Container(
          // margin: margin,
          width: size.width,
          height: size.height,
          child: Image.asset(imageList),
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(radius),
          //   image: DecorationImage(
          //     fit: BoxFit.cover,
          //     image: NetworkImage(
          //       imageList,
          //     ),
          //   ),
          // ),
        ),
      ),
    );
  }
}
