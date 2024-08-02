import 'package:aws_load/Authentication/registerPage.dart';
import 'package:flutter/material.dart';
import 'Authentication/loginPage.dart';
import 'Authentication/registerPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home:
      LoginPage(),
    );
  }
}
