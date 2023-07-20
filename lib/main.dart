import 'package:flutter/material.dart';
import 'package:task1/login.dart';
import 'package:task1/register.dart';
void main() {
  runApp(MaterialApp(
    initialRoute: 'login',
    debugShowCheckedModeBanner: false,
    routes:{
      'login': (context)=>Mylogin(),
      'register': (context)=>MyRegister()
    },
  ));
}