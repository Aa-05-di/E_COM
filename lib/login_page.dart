import 'package:ecom/log_item.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
          padding: const EdgeInsets.only(top:50.0),
          child: ShaderMask(
            shaderCallback: (bounds) => LinearGradient(
              colors: [Colors.indigo, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
            child: Text(
              "E-COMMERCE",
              style: TextStyle(
                fontSize: 46,
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
          child: Column(
            children: [
              SizedBox(height: 90),
              //Username
              LogButton(data: "Username", symbol: Icons.person),
              SizedBox(height: 30),
              //Password
              LogButton(data: "Password", symbol: Icons.key),
              SizedBox(height: 30),
              //LOGIN
              SizedBox(
                width: 100,
                height: 50,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                  ),
                  color: Colors.deepPurple[50],
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 22,
                      vertical: 11,
                    ),
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 60),
              //Register button
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context,'/register');
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
    );
  }
}
