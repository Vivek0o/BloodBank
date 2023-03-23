import 'package:flutter/material.dart';

class MyTexField extends StatelessWidget {
  final String hintText;
  final bool obscureText;

  MyTexField({Key? key,
  required this.hintText,
  required this.obscureText,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: 300,
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          fillColor: Colors.red.shade50,
          filled: true,
          hintText: hintText,
          contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        ),
      ),
    );
  }
}
