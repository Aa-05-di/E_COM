import 'package:flutter/material.dart';

class RegBoxDOB extends StatefulWidget {
  final String label;

  const RegBoxDOB({super.key, required this.label});

  @override
  State<RegBoxDOB> createState() => _RegBoxDOBState();
}

class _RegBoxDOBState extends State<RegBoxDOB> {
  final TextEditingController _dateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime(2005), // Default DOB range
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null) {
      setState(() {
        _dateController.text =
            "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: Card(
        color: const Color(0xFFFFF0F5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
          child: TextField(
            controller: _dateController,
            readOnly: true,
            onTap: () => _selectDate(context),
            style: const TextStyle(
              color: Color.fromARGB(255, 107, 107, 107),
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: widget.label,
              hintStyle: const TextStyle(
                fontSize: 15,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
              suffixIcon: Icon(Icons.calendar_today, color: Colors.deepPurple),
            ),
          ),
        ),
      ),
    );
  }
}
