import 'package:blood_bank/Widget/app_largeText.dart';
import 'package:blood_bank/Widget/app_smallText.dart';
import 'package:flutter/material.dart';

class MyPhone extends StatefulWidget {
  const MyPhone({Key? key}) : super(key: key);

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {

  TextEditingController countrycode = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    countrycode.text = "+91";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/login_image.jpg',
                width: 160,
                height: 160,
              ),
              SizedBox(
                height: 20,
              ),
              AppLargeText(text: 'Phone Verification',),
              SizedBox(
                height: 10,
              ),
              AppSmalltext(text: 'We need to register your phone before getting started !',),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: Colors.grey)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 40,
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        controller: countrycode,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    Text('|', style: TextStyle(color: Colors.grey, fontSize: 33),),
                    SizedBox(width: 10,),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(border: InputBorder.none, hintText: "Phone"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context,"otp");
                  },
                  child: Text('Send the code'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red.shade400,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
