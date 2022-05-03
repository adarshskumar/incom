import 'dart:math';
import 'package:flutter/material.dart';
import 'package:incom/components/rounded_button.dart';
import 'package:incom/components/rounded_input_field.dart';
import 'package:incom/components/rounded_password_field.dart';
import 'package:incom/constants.dart';
import 'package:incom/helpers/screen_navigation.dart';
import 'package:incom/screens/forgot_pwd.dart';

class LogIn extends StatelessWidget {
  LogIn({Key? key}) : super(key: key);

  final List imageList = [
    "assets/signup3.png",
    "assets/login2.png",
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
                width: size.width*0.75,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                  Text('Welcome', 
                    style: TextStyle(
                      color: kMainColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 40,
                    ),),
                  Text('Back', 
                  style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 28,
                ),),
                ],
                ),
              ),
              SizedBox(
                width: size.width,
                height: size.width *0.78,
                child: Stack(alignment: Alignment.center, children: [
                  // CircleAvatar(
                  //   backgroundColor: Colors.grey.withOpacity(0.5),
                  //   radius: size.width * 0.35,
                  // ),
                  DownloadsImageWidget(
                      imageList: imageList[0],
                      margin: const EdgeInsets.only(left: 140, top: 100),
                      angle: 0,
                      size: Size(size.width * 0.45, size.width * 0.50)),
                  DownloadsImageWidget(
                      imageList: imageList[1],
                      margin: const EdgeInsets.only(right: 85, top: 40),
                      angle: 0,
                      size: Size(size.width * 0.65, size.width * 0.60)),
                  DownloadsImageWidget(
                      radius: 10,
                      imageList: imageList[2],
                      margin: const EdgeInsets.only(bottom: 0, top: 200),
                      size: Size(size.width * 0.30, size.width * 0.45)),
                ]),
              ),
              const Text(
                "Login",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
              ),
              const SizedBox(
                height: 15,
              ),
              RoundedInputField(
                hintText: " Mobile Number",
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                hintText: ' Password',
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 3,
              ),
              GestureDetector(
                onTap: (() => changeScreen(context, ForgotPwd())),
                child: Padding(
                  padding: EdgeInsets.only(left: 180.0),
                  child: Text(
                    'Forgot Password ?',
                    style: TextStyle(
                      color: kMainColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              RoundedButton(
                text: "Login",
                press: () {},
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    "Don't have an account ? ",
                    style: TextStyle(color: kHintTextColor),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: kMainColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
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
