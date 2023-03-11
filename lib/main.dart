import 'package:blood_bank/otp.dart';
import 'package:blood_bank/phone.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'phone',
    routes: {
      'phone': (context) => MyPhone(),
      'otp': (contex) => MyOtp()
    },
  ));
}
