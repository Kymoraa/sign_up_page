import 'package:flutter/material.dart';
import 'package:sign_up_page/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(),
      home: const LoginScreen(),
    );
  }
}
