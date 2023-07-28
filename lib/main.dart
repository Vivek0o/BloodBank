import 'package:blood_bank/Feed/HomeFeed.dart';
import 'package:blood_bank/Screens/splash_screen.dart';
import 'package:blood_bank/Screens/wlecome_screen.dart';
import 'package:blood_bank/otp.dart';
import 'package:blood_bank/phone.dart';
import 'package:blood_bank/constants/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Screens/SignIn_screen.dart';
import 'Screens/SignUp_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.signUpScreen,
    routes: {
      "splash": (context) => SplashScreen(),
      Routes.otpScreen: (context) => MyOtp(),
      Routes.signUpScreen: (context) => Signup(),
      Routes.signInScreen: (context) => SignIn(),
      Routes.phoneScreen: (context) => MyPhone(),
      Routes.welcomeScreen: (context) => WelcomePage(),
      Routes.homeFeed: (context) => HomeFeed(),
    },
  ));
}
