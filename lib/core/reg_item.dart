import 'package:flutter/material.dart';

class RegBox extends StatelessWidget {
  final String? Function(String?)? validator;
  final String data;
  final TextEditingController controller;
  const RegBox({super.key,required this.data,required this.controller,required this.validator});

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
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          child: TextFormField(
            maxLines: 1,
            controller: controller,
            style: TextStyle(color: const Color.fromARGB(255, 107, 107, 107),fontSize: 10),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: data,
              hintStyle: TextStyle(
                fontSize: 10,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            validator: validator,
          ),
        ),
      ),
    );
  }
}
