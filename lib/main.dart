import 'package:blood_bank/Screens/splash_screen.dart';
import 'package:blood_bank/Screens/wlecome_screen.dart';
import 'package:blood_bank/otp.dart';
import 'package:blood_bank/phone.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Screens/SignUp_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: {
      'phone': (context) => MyPhone(),
      'otp': (contex) => MyOtp(),
      'splash_screen': (context) => SplashScreen(),
      'welcome_screen': (context) => WelcomePage(),
      'SignUp_screen': (context) => Signup(),
    },
  ));
}
