import 'package:ecom/core/reg_item.dart';
import 'package:ecom/core/submit.dart';
import 'package:ecom/presentation/login_page.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController fullnamecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmcontroller = TextEditingController();

  void _reg(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      if (passwordController.text == confirmcontroller.text) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("User Registered Successfully")),
        );
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => LoginPage()),
          (route) => false,
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Password fields do not match")),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8DAEF), // Soft lavender background
      appBar: AppBar(
        backgroundColor: const Color(0xFFD2B4DE), // Deeper plum
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Registration Details",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              RegBox(
                data: "Full Name",
                controller: fullnamecontroller,
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return 'Please enter fullname';
                  return null;
                },
              ),
              const SizedBox(height: 10),
              RegBox(
                data: "Email",
                controller: emailcontroller,
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return 'Please enter email';
                  return null;
                },
              ),
              const SizedBox(height: 10),
              RegBox(
                data: "Password",
                controller: passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return 'Please enter password';
                  return null;
                },
              ),
              const SizedBox(height: 10),
              RegBox(
                data: "Confirm Password",
                controller: confirmcontroller,
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return 'Please confirm password';
                  return null;
                },
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _reg(context),
                child: const Submit(
                  data: "Register",
                  x: 120,
                  y: 50,
                  colour: Color(0xFFC39BD3),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
