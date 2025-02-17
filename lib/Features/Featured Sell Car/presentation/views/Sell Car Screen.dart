import 'package:carz/core/Styles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/Utils/Widgets/TxtField.dart';

class SellCarScreen extends StatelessWidget {
  const SellCarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Title",style: Style.titleStyle,),
            buildTextField("Enter Title"),
            SizedBox(
              height: 10,),
            Row(
              children: [
                Text(
                  "Condition",style: Style.titleStyle,),
                SizedBox(width: 70,),
                Text(
                  "Year",style: Style.titleStyle,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
