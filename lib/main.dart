import 'package:task/forgot_pass.dart';
import 'package:task/screens/home.dart';
import 'package:task/nav.dart';
import 'package:task/login.dart';
import 'package:task/screens/profile.dart';
import 'package:task/register.dart';
import 'package:flutter/material.dart';
import 'package:task/sendlink.dart';
import 'package:task/screens/settings.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {
      'login' : (context) => MyLogin(),
      'register' : (context) => MyRegister(),
      'forgot_password' : (context) => ForgotPassword(),
      'link_send' : (context) => SendLink(),
      'nav' : (context) => NavigationMenu(),
      'profile' : (context) => ProfileScreen(),
      'settings' : (context) => SettingsScreen(),
      'home' : (context) => HomeScreen(),
    },
  ));
}
