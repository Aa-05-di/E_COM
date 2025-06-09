import 'package:ecom/pages/product_details.dart';
import 'package:ecom/pages/registration.dart';
import 'package:ecom/pages/shopping_page.dart';
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
      home: ShoppingPage(),
      routes: {'/register': (context) => const RegistrationPage(),},
    );
  }
}
