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
    return FormField<String>(
      validator: validator,
      initialValue: controller.text,
      builder: (FormFieldState<String> state) {
        // Update FormField state when TextFormField changes
        void updateState() {
          state.didChange(controller.text);
        }

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
                    onChanged: (value) {
                      updateState(); // Update FormField state on text change
                    },
                  ),
                ),
              ),
            ),
            if (state.hasError)
              Padding(
                padding: const EdgeInsets.only(top: 4, left: 13),
                child: Text(
                  state.errorText!,
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 12,
                  ),
                ),
              )
            else
              const SizedBox.shrink(),
          ],
        );
      },
    );
  }
}