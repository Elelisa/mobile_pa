import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pa_mobile3/landingPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashScreenStart();
  }

  splashScreenStart() {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Get.to(() => LandingPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEF4E9),
      body: Center(
        child: Image.asset(
          "assets/splash/logo.png",
          width: 400,
          height: 400,
        ),
      ),
    );
  }
}
