import 'package:flutter/material.dart';

class LoginInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const LoginInputField({
    super.key,
    required this.hintText,
    required this.icon,
    required this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          height: 60,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Colors.deepPurple[50],
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 5),
              child: TextFormField(
                controller: controller,
                style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hintText,
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                  icon: Icon(icon, color: Colors.deepPurple),
                ),
                validator: null,
              ),
            ),
          ),
        ),
        if (validator != null)
          FormField<String>(
            validator: validator,
            builder: (FormFieldState<String> state) {
              return state.hasError
                  ? Padding(
                      padding: const EdgeInsets.only(top: 4, left: 13),
                      child: Text(
                        state.errorText!,
                        style: const TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                        ),
                      ),
                    )
                  : const SizedBox.shrink();
            },
          ),
      ],
    );
  }
}