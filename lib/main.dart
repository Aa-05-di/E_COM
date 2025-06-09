import 'package:ecom/presentation/login_page.dart';
import 'package:ecom/presentation/registration.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "E-Commerce App",
      theme: ThemeData.dark(useMaterial3: true),
      home: LoginPage(),
      routes: {'/register': (context) => const RegistrationPage(),},
    );
  }
}
