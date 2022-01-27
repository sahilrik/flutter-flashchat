// ignore_for_file: prefer_const_constructors

import 'package:flashchat/components/roundedbutton.dart';
import 'package:flashchat/constants.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: SizedBox(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                email = value;
              },
              decoration: KTextFieldInputDecoration.copyWith(
                  hintText: 'enter your email'),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.visiblePassword,
              onChanged: (value) {
                password = value;
              },
              decoration: KTextFieldInputDecoration.copyWith(
                  hintText: 'enter yout password'),
            ),
            SizedBox(
              height: 24.0,
            ),
            RoundedButton(
                title: 'Log in',
                colour: Colors.lightBlueAccent,
                onpressed: () {
                  print(email);
                  print(password);
                })
          ],
        ),
      ),
    );
  }
}
