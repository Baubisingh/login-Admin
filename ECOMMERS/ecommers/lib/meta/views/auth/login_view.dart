import 'package:ecommers/app/shared/colors.dart';
import 'package:ecommers/app/shared/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class LoginView extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: darkColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            vSizedBox3,
            vSizedBox2,
            Container(
              child: Row(
                children: [
                  IconButton(
                      icon: Icon(
                        EvaIcons.arrowBackOutline,
                        color: whiteColor,
                      ),
                      onPressed: () {})
                ],
              ),
            ),
            vSizedBox4,
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hey Admin let's sign you in. ",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
                          color: whiteColor)),
                  Text("Welcome Back",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: whiteColor)),
                  Text(
                    "we miss you",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: whiteColor),
                  ),
                ],
              ),
            ),
            vSizedBox3,
            vSizedBox1,
            Container(
              child: Column(
                children: [
                  vSizedBox1,
                  stylishTextField("Email", emailController),
                  vSizedBox1,
                  stylishTextField("Password", passwordController),
                ],
              ),
            ),
            vSizedBox4,
            Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: "Don't have an account?",
                          style: TextStyle(
                              color: textColor,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Montserrat"),
                        ),
                        TextSpan(
                          text: "Sign up",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => LoginView()));
                            },
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 20,
                              color: textColor,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Montserrat"),
                        )
                      ]),
                    ),
                    vSizedBox2,
                    Container(
                      width: 300.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(1),
                          borderRadius: BorderRadius.circular(18.0)),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w900,
                              fontFamily: "Montserrat"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  stylishTextField(String text, TextEditingController textEditingController) {
    return TextField(
        controller: textEditingController,
        style: TextStyle(color: whiteColor, fontSize: 18.0),
        decoration: new InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(EvaIcons.backspace, color: textColor),
          ),
          filled: true,
          hintText: text,
          hintStyle: new TextStyle(color: textColor, fontSize: 14.0),
          fillColor: bgColor,
          border: new OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                const Radius.circular(20),
              )),
        ));
  }
}
