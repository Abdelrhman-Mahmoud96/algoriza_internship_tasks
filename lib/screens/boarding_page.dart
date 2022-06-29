import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:internship_task1/screens/sign_in_page.dart';
import 'package:internship_task1/screens/sign_up_page.dart';
import 'package:internship_task1/widgets/custom_button.dart';
import 'package:internship_task1/widgets/custom_redirecting_text.dart';

class BoardingPage extends StatelessWidget {
  const BoardingPage({Key? key,}) : super(key: key);
  
  final String welcomeText = 'Welcome to the First Task';
  final double fontSize = 32;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //image
          Expanded(child: Image.asset('assets/undraw_runner.png')),
          //main text
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 64),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      welcomeText,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: fontSize,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      welcomeText,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.deepPurple, fontSize: 14,),
                    ),
                  ),
                ],
              ),
            ),
          ),

          CustomButton(
            buttonKey: const Key('boarding_page_sign_in_key'),
            label: 'Sign In',
            onPressed: (){
              Navigator.pushReplacementNamed(context, '/signInPage');
            },
          ),
          //not having account(sign up)
          CustomRedirectingText(
            questionText: 'You do not having an Account? ',
            pageNameText: 'Sign Up',
            onTap: (){
              Navigator.pushReplacementNamed(context, '/signUpPage');
            },
          ),

        ],
      ),
    );
  }
}
