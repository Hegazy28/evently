import 'package:evently/ui/login_screen/login_screen.dart';
import 'package:evently/ui/sign_up_screen.dart/signUp_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {

  static Route login(){
    return MaterialPageRoute(builder: (context) => LoginScreen(),);
  }

  static Route signup(){
    return MaterialPageRoute(builder: (context) => SignupScreen(),);
  }
}

