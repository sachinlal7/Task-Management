import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sambhav/views/screens/MobileNumber.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  SplashServices splashscreen = SplashServices();

  late AnimationController animationcontroller;
  late Animation<double> animateappbar;
  late Animation<double> animatemain;
  bool play = false;

  @override
  void initState() {
    super.initState();
    splashscreen.isLogin(context);

    animationcontroller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    animateappbar = Tween(begin: 0.0, end: 22.0).animate(animationcontroller);
    animatemain = Tween(begin: 0.0, end: 3.3).animate(animationcontroller);

    animationcontroller.addListener(() {
      setState(() {
        play = !play;
      });
    });

    animationcontroller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/flashAppBar.jpg"), fit: BoxFit.fill),
        ),
        child: Stack(
          children: [
            Positioned(
                child: Opacity(
              opacity: 0.04,
              child: Center(
                  child: ScaleTransition(
                scale: animateappbar,
                child: Image(
                  image: const AssetImage("assets/watermark.png"),
                  height: animateappbar.value,
                  width: animateappbar.value,
                ),
              )),
            )),
            AnimatedPositioned(
              duration: const Duration(seconds: 3),
              height: play ? 140 : 0,
              left: 0,
              bottom: play ? MediaQuery.of(context).size.height / 3 : 0,
              curve: Curves.easeInOut,
              right: -30,
              child: Center(
                child: SizedBox(
                  height: 400,
                  width: 400,
                  child: ScaleTransition(
                    scale: animatemain,
                    child: Image(
                      image: const AssetImage(
                        "assets/main.png",
                      ),
                      height: animatemain.value,
                      width: animatemain.value,
                    ),
                  ),
                ),
              ),
            ),
            const Positioned(
                top: 205,
                left: 70,
                child: Text(
                  "SAMBHAV",
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontFamily: 'Castoro',
                      fontWeight: FontWeight.bold),
                )),
            const Positioned(
                top: 589,
                left: 70,
                child: Text(
                  "APKA RAJNITIK HUMSAFAR",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    );
  }
}

class SplashServices {
  void isLogin(BuildContext context) {
    Timer(
        Duration(seconds: 8),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MobileNumber())));
  }
}
