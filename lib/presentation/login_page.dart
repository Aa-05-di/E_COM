import 'package:ecom/core/log_item.dart';
import 'package:ecom/core/submit.dart';
import 'package:ecom/presentation/shopping_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

 void _login(BuildContext context) {
  if (_formKey.currentState!.validate()) {
    usernameController.clear();
    passwordController.clear();
    Navigator.push(context, MaterialPageRoute(builder: (_) => ShoppingPage()));
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[100],
        toolbarHeight: 90,
        elevation: 0,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: ShaderMask(
            shaderCallback: (bounds) => LinearGradient(
              colors: [Colors.indigo, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
            child: Text(
              "E-COMMERCE",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                letterSpacing: 2.0,
                color: Colors.white, // Required for ShaderMask to show gradient
                shadows: [
                  Shadow(
                    blurRadius: 2,
                    color: Colors.black26,
                    offset: Offset(1, 1),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height: 90),
                //Username
                LogButton(
                  data: "Username",
                  symbol: Icons.person,
                  controller: usernameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter username';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 30),
                //Password
                LogButton(
                  data: "Password",
                  symbol: Icons.key,
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter password';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 30),
                //LOGIN
                GestureDetector(
                  onTap: () => _login(context),
                  child: Submit(
                    data: "Login",
                    x: 100,
                    y: 50,
                    colour: Colors.deepPurple[50],
                  ),
                ),
                SizedBox(height: 60),
                //Register button
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: Text(
                    "Not a User? Register Now",
                    style: TextStyle(color: Colors.deepPurple),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
