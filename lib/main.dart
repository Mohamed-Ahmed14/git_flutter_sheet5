

import 'package:flutter/material.dart';
import 'package:second_project/sign_up_screen.dart';
import 'package:second_project/welcome_screen.dart';
import 'car_screen.dart';
import 'login_screen.dart';
import 'massenger_screen.dart';
import 'options_screen.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: OptionsScreen(),
    //home : WelcomeScreen(),
   // home: SignUpScreen(),
   // home: LoginScreen(),
   //home: MassengerScreen(),
    home: CarScreen(),


  ));
}