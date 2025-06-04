import 'package:flutter/material.dart';

class LogButton extends StatelessWidget {
  final String data;
  final IconData symbol;
  const LogButton({super.key,required this.data,required this.symbol});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.deepPurple[50],
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 12),
          child: TextField(
            style: TextStyle(
              color: Colors.black38,
              fontWeight: FontWeight.bold,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: data,
              hintStyle: TextStyle(color: Colors.deepPurple),
              icon: Icon(symbol, color: Colors.deepPurple),
            ),
          ),
        ),
      ),
    );
  }
}
