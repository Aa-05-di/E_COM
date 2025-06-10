import 'package:flutter/material.dart';

class RegBox extends StatelessWidget {
  final String? Function(String?)? validator;
  final String data;
  final TextEditingController controller;

  const RegBox({
    super.key,
    required this.data,
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
              height: 50,
              child: Card(
                color: Colors.deepPurple[50],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                  child: TextFormField(
                    maxLines: 1,
                    controller: controller,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 107, 107, 107),
                      fontSize: 10,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: data,
                      hintStyle: const TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
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
                padding: const EdgeInsets.only(top: 4, left: 12),
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