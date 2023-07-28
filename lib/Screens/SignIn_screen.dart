import 'package:blood_bank/Widget/MyButton.dart';
import 'package:blood_bank/Widget/TextField.dart';
import 'package:blood_bank/Widget/app_largeText.dart';
import 'package:blood_bank/Widget/app_smallText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/routes.dart';

class SignIn extends StatelessWidget {
  final simpleController = TextEditingController();
  final passwordController = TextEditingController();

  SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade100,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 60, left: 20, right: 20),
              child: Column(
                children: [
                  AppLargeText(text: "SignIn", size: 30,color: Colors.red.shade400),
                  Icon(Icons.admin_panel_settings_rounded, color: Colors.red.shade400, size: 60,),
                  AppLargeText(text: "Welcome back!"),
                  AppSmalltext(text: "Logged into your Profile to start continue your journey."),
                ],
              ),
            ),
            Container(
              margin:  EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  MyTexField(
                      hintText: "Email- Id",
                      obscureText: false),
                  SizedBox(height: 10,),
                  MyTexField(
                      hintText: "Password",
                      obscureText: true),
                  SizedBox( height: 20,),
                  MyButton(text: "Sign In", routes: Routes.signUpScreen,),
                  SizedBox( height: 20,),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.red.shade400,
                    child: IconButton(
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.signUpScreen);
                      },
                      icon: const Icon(Icons.arrow_forward),
                    ),
                  ),
                  SizedBox( height: 10,),
                  AppLargeText(text: "Sign Up", size: 17,color: Colors.red.shade400),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
