import 'package:flutter/material.dart';
import 'package:sambhav/utils/color_code.dart';
import 'package:sambhav/views/screens/OTPScreen.dart';

class MobileNumber extends StatefulWidget {
  const MobileNumber({super.key});

  @override
  State<MobileNumber> createState() => _MobileNumberState();
}

class _MobileNumberState extends State<MobileNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        width: double.maxFinite,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: const Image(
                image: AssetImage('assets/enterScreen.png'),
                width: 250,
              ),
            ),
            Container(
              width: double.maxFinite,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(bottom: 10),
                      child: const Text(
                        "Mobile Number",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )),
                  Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(bottom: 10),
                      child: const Text(
                        "Please enter your valid mobile number.\n we will send you 4 digit code to varify account",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Mobile Number',
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 25, bottom: 25),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Otp()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorCode.middleCircle,
                          minimumSize: const Size.fromHeight(50),
                          shape: RoundedRectangleBorder(
                            //to set border radius to button
                            borderRadius: BorderRadius.circular(30),
                          ), //<-- SEE HERE
                          padding: const EdgeInsets.all(20),
                        ),
                        child: const Text("Enter Mobile Number")),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
