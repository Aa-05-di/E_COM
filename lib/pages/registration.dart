import 'package:ecom/items/reg_item.dart';
import 'package:ecom/items/submit.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8DAEF), // Soft lavender background
      appBar: AppBar(
        backgroundColor: const Color(0xFFD2B4DE), // Deeper plum
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          "Registration Details",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: const [
            RegBox(data: "Full Name"),
            SizedBox(height: 10),
            RegBox(data: "Email"),
            SizedBox(height: 10),
            RegBox(data: "Password"),
            SizedBox(height: 10),
            RegBox(data: "Confirm Password"),
            SizedBox(height: 20),
            Submit(
              data: "Register",
              x: 120,
              y: 50,
              colour: Color(0xFFC39BD3), // Soft violet button
            ),
          ],
        ),
      ),
    );
  }
}
