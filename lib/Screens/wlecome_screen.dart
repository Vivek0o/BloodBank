import 'package:blood_bank/Widget/app_largeText.dart';
import 'package:blood_bank/Widget/app_smallText.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "welcome_screen_second_image.png",
    "welcome_screen_third_image.jpg",
  ];

  List text = [
    "and give a gift of happiness to yourselves....!",
    "and spread gift of happiness to world....!"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: images.length,
            itemBuilder: (_, index) {
              return Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/" + images[index]
                        ),
                        fit: BoxFit.cover
                    )
                ),
                child: Container(
                  margin: const EdgeInsets.only(top: 130, left: 20, right: 20),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppLargeText(text: "Donate"),
                          AppSmalltext(text: "Blood", size: 19,color: Colors.black54),
                          SizedBox( height: 10),
                          Container(
                            margin: const EdgeInsets.only(top: 0, left: 0, right: 20, bottom: 30),
                            child: AppSmalltext(
                              text: text[index],
                              color: Colors.black54,
                              size: 14,
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context,"phone");
                              },
                              child: Text('Sign Up'),
                              style: ElevatedButton.styleFrom(
                                  primary: index == 0 ? Colors.red.shade400 : Colors.red.shade200,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                            ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            })
    );
  }
}
