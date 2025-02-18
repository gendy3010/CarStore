import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  final String text; // تم إضافة متغير لاستقبال النص

  const CustomCheckBox({super.key, required this.text});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isChecked = false; // نقل isChecked ليكون متغير حالة داخل State

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          checkColor: Colors.black,
          activeColor: Colors.white,
          side: const BorderSide(color: Colors.black, width: 2),
          value: isChecked,
          onChanged: (bool? newValue) {
            setState(() {
              isChecked = newValue ?? false;
            });
          },
        ),
        Text(
          widget.text, // استخدام widget.text لأنه يأتي من الـ StatefulWidget
          style: const TextStyle(
            color: Colors.black,
            fontFamily: 'PoppinsRegular',
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
