import 'package:flutter/material.dart';
import 'package:internship_task1/screens/boarding_page.dart';
import 'package:internship_task1/screens/home_page.dart';
import 'package:internship_task1/screens/sign_in_page.dart';
import 'package:internship_task1/screens/sign_up_page.dart';

class RouteGenerator {
  static const boardingPage = '/';
  static const homePage = '/homePage';
  static const signUpPage = '/signUpPage';
  static const signInPage = '/signInPage';

  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case boardingPage:
        return MaterialPageRoute<void>(
          builder: (_) => const BoardingPage(),
        );
      case homePage:
        return MaterialPageRoute<void>(
          builder: (_) => const HomePage(),
        );
      case signUpPage:
        return MaterialPageRoute<void>(
          builder: (_) => const SignUpPage(),
        );
      case signInPage:
        return MaterialPageRoute<void>(
          builder: (_) => const SignInPage(),
        );
      default:
        throw const FormatException('Route Not Found');
    }
  }

}