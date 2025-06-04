import 'package:flutter/material.dart';

class Submit extends StatelessWidget {
  final String data;
  final double x;
  final double y;
  final Color? colour;
  const Submit({super.key, required this.data,required this.x,required this.y,required this.colour});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: x,
      height: y,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(10),
        ),
        color: colour,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 11),
          child: Text(
            data,
            style: TextStyle(
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
