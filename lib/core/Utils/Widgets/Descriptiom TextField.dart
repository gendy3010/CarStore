import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DescriptionTextField extends StatelessWidget {
DescriptionTextField({super.key,this.suffix,required this.hint});
Icon? suffix;
String hint;
@override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 50.0,horizontal:20 ),

        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.orangeAccent),
        ),
        hintText: hint,
      ),


    ),
  );
}
}
