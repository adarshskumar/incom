import 'package:flutter/material.dart';
import 'package:incom/screens/forgot_pwd.dart';
import 'package:incom/screens/login.dart';
import 'package:incom/screens/onBoardingScreen.dart';
import 'package:incom/screens/reset_pwd.dart';
import 'package:incom/screens/signup.dart';
import 'package:incom/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Incom',
      theme: theme(),
      home: OnBoardingScreen(),
    );
  }
}
