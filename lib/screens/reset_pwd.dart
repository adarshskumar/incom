import 'dart:math';
import 'package:flutter/material.dart';
import 'package:incom/components/rounded_button.dart';
import 'package:incom/components/rounded_input_field.dart';
import 'package:incom/components/rounded_password_field.dart';
import 'package:incom/constants.dart';
import 'package:incom/helpers/screen_navigation.dart';
import 'package:incom/screens/login.dart';

class ResetPwd extends StatelessWidget {
  ResetPwd({Key? key}) : super(key: key);

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
                  Text('Password', 
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 35,
                    ),),
                  Text('Reset', 
                  style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 35,
                ),),
                ],
                ),
              ),
              const SizedBox(height: 30,),
              Center(child: Image.asset('assets/reset_pwd.png', width: 120, height: 160,)),
              const SizedBox(height: 50,),
              const Text(
                "Enter New Password",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
              ),
              const SizedBox(
                height: 25,
              ),
              RoundedPasswordField(
                hintText: " New Password",
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                hintText: " Re-enter Password",
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 3,
              ),
             
              const SizedBox(
                height: 60,
              ),
              RoundedButton(
                text: "Confirm",
                press: () {},
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    "Remember Password ? ",
                    style: TextStyle(color: kHintTextColor),
                  ),
                  GestureDetector(
                    onTap: () {
                      changeScreen(context, LogIn());
                    },
                    child: const Text(
                      'Login',
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
