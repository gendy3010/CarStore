import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  Custombutton({super.key,required this.title,this.tab});
  String title;
  VoidCallback? tab;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: tab,
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

            backgroundColor: Colors.deepOrange,
            minimumSize:Size(230, 55)
        ),
        child: Text(title,
          style:TextStyle(
            color: Colors.white,
            fontFamily: 'PoppinsRegular',
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}
