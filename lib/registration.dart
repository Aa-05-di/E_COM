import 'package:ecom/reg_item.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        iconTheme: IconThemeData(
          color: Colors.deepPurple,
        ),
        title: Text("Registration Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            RegBox(data: "Full Name"),
            SizedBox(height: 10,),
            RegBox(data: "Email"),
            SizedBox(height: 10,),
            RegBox(data: "Password"),
            SizedBox(height: 10,),
            RegBox(data: "Confirm Password"),
          ],
        ),
      ),
    );
  }
}