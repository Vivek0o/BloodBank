import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final String routes;

  const MyButton({
    required this.text,
    required this.routes,
    Key? key,
  }) : super(key: key,);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
            Navigator.pushNamed(context, routes);
      },
       child: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.symmetric(horizontal: 40.0),
          decoration: BoxDecoration(
              color: Colors.red.shade400, borderRadius: BorderRadius.circular(8)),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
    );
  }
}
