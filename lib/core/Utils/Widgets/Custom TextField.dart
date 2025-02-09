import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({super.key,required this.hintText,this.tap,required this.warninText,this.suffix,this.prefix});
  String hintText;
  String warninText;
  Icon? suffix;
  Widget? prefix;
  VoidCallback? tap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: tap,
      validator: (value){
        if(value!.isEmpty){
          return warninText;
        }
        return null;
      },
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)
        ),
        hintText:  hintText,
        suffixIcon: suffix,
        prefixIcon: prefix,
        border: const OutlineInputBorder(),
      ),


    );
  }
}
