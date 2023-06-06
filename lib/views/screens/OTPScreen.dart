import 'package:flutter/material.dart';
import 'package:sambhav/utils/color_code.dart';
import 'package:sambhav/views/global_widgets/CommanBottomNavigation.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
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
                        "Varify Account!",
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
                        "Enter 4 digit code. Code have sent to at +91*******423",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      )),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(bottom: 10),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Change mobile number?'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: const [
                            Flexible(
                              flex: 3,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: '0',
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 3,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: '0',
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 3,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: '0',
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 3,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: '0',
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 25, bottom: 25),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CommanBottomNavigation()));
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
                        child: const Text("Verify OTP")),
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
