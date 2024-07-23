import 'package:flutter/material.dart';
import 'package:reviewit/screens/login_and_signup.dart';
import 'package:reviewit/screens/login_screen.dart';
import 'package:reviewit/screens/signup_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: LoginAndSignup(),
    );
  }
}
