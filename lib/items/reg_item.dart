import 'package:flutter/material.dart';

class RegBox extends StatelessWidget {
  final String data;
  const RegBox({super.key,required this.data});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: Card(
        color: Colors.deepPurple[50],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
          child: TextField(
            style: TextStyle(color: const Color.fromARGB(255, 107, 107, 107)),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: data,
              hintStyle: TextStyle(
                fontSize: 15,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
