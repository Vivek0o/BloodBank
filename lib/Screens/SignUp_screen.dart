import 'package:blood_bank/Widget/MyButton.dart';
import 'package:blood_bank/Widget/TextField.dart';
import 'package:blood_bank/Widget/app_largeText.dart';
import 'package:blood_bank/Widget/app_smallText.dart';
import 'package:blood_bank/constants/blood_group.dart';
import 'package:blood_bank/constants/prevailing_disease.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/routes.dart';

class Signup extends StatelessWidget {
  final simpleController = TextEditingController();
  final passwordController = TextEditingController();
  final ValueNotifier<String?> selectedBloodGroup = ValueNotifier(null);
  final ValueNotifier<String?> selectedDisease = ValueNotifier(null);

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
              margin: const EdgeInsets.only(top: 60, left: 20, right: 20),
              child: Column(
                children: [
                  AppLargeText(text: "SignUp", size: 30,color: Colors.red.shade400),
                  Icon(Icons.admin_panel_settings_rounded, color: Colors.red.shade400, size: 60,),
                  AppLargeText(text: "Get On Board!"),
                  AppSmalltext(text: "Create Your Profile to start your journey."),
                ],
              ),
            ),
            Container(
              margin:  const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20,),
                  MyTexField(
                      hintText: "Full name",
                      obscureText: false),
                  const SizedBox(height: 10,),
                  MyTexField(
                      hintText: "Age",
                      obscureText: false),
                  const SizedBox(height: 10,),
                  MyTexField(
                      hintText: "Email- Id",
                      obscureText: false),
                  const SizedBox(height: 10,),
                  MyTexField(
                      hintText: "Password",
                      obscureText: true),
                  const SizedBox(height: 5,),
                  dropdownField("Blood Group",bloodGroups,
                      selectedValueNotifier: selectedBloodGroup,),
                  const SizedBox(height: 5,),
                  dropdownField("Prevailing Disease", prevailingDisease,
                    selectedValueNotifier: selectedDisease,),
                  const SizedBox( height: 20,),
                  const MyButton(text:"Register for Checkup", routes: Routes.homeFeed),
                  const SizedBox( height: 20,),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.red.shade400,
                    child: IconButton(
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.signInScreen);
                      },
                      icon: const Icon(Icons.arrow_forward),
                    ),
                  ),
                  SizedBox( height: 10,),
                  AppLargeText(text: "Sign In", size: 17,color: Colors.red.shade400),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


  Padding dropdownField(String title, List<String> options,
      { required ValueNotifier<String?> selectedValueNotifier}) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, right: 150),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ValueListenableBuilder<String?>(
              valueListenable: selectedValueNotifier,
              builder: (context, selectedValue, child) {
                return InputDecorator(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Select ${title.toLowerCase()}",
                    ),
                  child: Container(
                    height: 17,
                    child:  DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: selectedValue,
                        items: options.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (value) {
                          selectedValueNotifier.value = value;
                        },
                      ),
                    ),
                  )
                );
              })
        ],
      ),
    );
  }
}
