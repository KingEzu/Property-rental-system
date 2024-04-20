import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/LoginPage.dart';
import 'package:flutter_application_1/Pages/SignupPage.dart';
//import 'package:flutter_application_1/Pages/UserTypeSelectionScreen.dart';
//import 'package:flutter_application_1/widgets/LoginPage.dart';
import 'package:flutter_application_1/Pages/HomePages.dart';
import 'package:flutter_application_1/Pages/wellcomeScreen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
      "/" : (context) => wellcomeScreen(),
      "homePage": (context) => HomePage(),
//      "UserTypeSelectionScreen": (context) => UserTypeSelectionScreen(),
      "LoginPage": (context) => LoginPage(),
      "SignupPage":  (context) => SignupPage(),
      },
    );
  }
}
 