import 'package:flutter/material.dart';
import 'package:incom/components/rounded_button.dart';
import 'package:incom/constants.dart';
import 'package:incom/helpers/screen_navigation.dart';
import 'package:incom/screens/login.dart';
import 'package:incom/screens/reset_pwd.dart';

class ForgotPwd extends StatelessWidget {
  const ForgotPwd({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(
                  // width: size.width*0.75,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                    Text('Forgot your', 
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 34,
                      ),),
                    Text('password?', 
                    style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 34,
                  ),),
                  ],
                  ),
                ),
            Center(child: Image.asset('assets/forgot_pwd.png')),
            const Center(
              child: Text('Check your inbox for the password \n reset link', 
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF959595),
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),),
            ),
            Center(
              child: RoundedButton(
                  text: "Resend SMS",
                  press: () {
                    changeScreen(context, ResetPwd());
                  },
                ),
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text('Remember Password ?', style: TextStyle(color: kHintTextColor),),
                GestureDetector(
                  onTap: (() => changeScreen(context, LogIn()) ),
                  child: Text(' Login', style: TextStyle(color: kMainColor),)),
              ],)
          ],),
        )
      ),
      
    );
  }
}