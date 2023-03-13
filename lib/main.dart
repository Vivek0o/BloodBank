import 'package:blood_bank/Screens/splash_screen.dart';
import 'package:blood_bank/otp.dart';
import 'package:blood_bank/phone.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: {
      'phone': (context) => MyPhone(),
      'otp': (contex) => MyOtp(),
      'splash_screen': (context) => SplashScreen(),
    },
  ));
}
