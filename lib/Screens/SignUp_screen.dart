import 'package:blood_bank/Widget/MyButton.dart';
import 'package:blood_bank/Widget/TextField.dart';
import 'package:blood_bank/Widget/app_largeText.dart';
import 'package:blood_bank/Widget/app_smallText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  final simpleController = TextEditingController();
  final passwordController = TextEditingController();

  Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade100,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 100, left: 20, right: 20),
              child: Column(
                children: [
                  AppLargeText(text: "SignUp", size: 30,color: Colors.red.shade400),
                  Icon(Icons.admin_panel_settings_rounded, color: Colors.red.shade400, size: 60,),
                ],
              ),
            ),
            Container(
              margin:  EdgeInsets.only(top: 40, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppLargeText(text: "Get On Board!"),
                  AppSmalltext(text: "Create Your Profile to start your journey."),
                  SizedBox(height: 20,),
                  MyTexField(
                      hintText: "Full name",
                      obscureText: false),
                  SizedBox(height: 10,),
                  MyTexField(
                      hintText: "Age",
                      obscureText: false),
                  SizedBox(height: 10,),
                  MyTexField(
                      hintText: "Email- Id",
                      obscureText: false),
                  SizedBox(height: 10,),
                  MyTexField(
                      hintText: "Prevailing Health Condition",
                      obscureText: false),
                  SizedBox(height: 10,),
                  MyTexField(
                      hintText: "Blood Group",
                      obscureText: false),
                  SizedBox( height: 20,),
                  MyButton(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
