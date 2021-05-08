import 'dart:async';
import 'package:page_transition/page_transition.dart';
import 'package:ecommers/app/shared/colors.dart';
import 'package:ecommers/meta/views/auth/signup_view.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(Duration(seconds: 2),
        () => Navigator.pushReplacement(context, pageTransition()));
    super.initState();
  }

  pageTransition() {
    PageTransition(child: SignupView(), type: PageTransitionType.rightToLeft);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("ecommes",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w900,
                    color: whiteColor)),
          ],
        ),
      ),
    );
  }
}
