import 'package:carz/core/Styles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/Utils/Widgets/Custom button.dart';
import '../../../../core/Utils/Widgets/Descriptiom TextField.dart';
import '../../../../core/Utils/Widgets/TxtField.dart';
import '../widgets/Build CheckBox.dart';
import '../widgets/Condition Selection.dart';
import '../widgets/DropDown.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Title",style: Style.titleStyle,),
              ),
              buildTextField("Enter Title"),
              SizedBox(
                height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Row(
                  children: [
                    Text(
                      "Condition",style: Style.titleStyle,),
                    SizedBox(width: 83,),
                    Text(
                      "Year",style: Style.titleStyle,),
                  ],
                ),
              ),
              Row(
                children: [
                  ConditionSelection(),
                  SizedBox(
                    width: 165,
                      child: buildTextField("Enter Title")),

                ],
              ),
              SizedBox(
                height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text(
                      "Model",style: Style.titleStyle,),
                    SizedBox(width: 117,),
                    Text(
                      "Brand",style: Style.titleStyle,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Expanded(child: buildDropdown(" Select Model")),
                    SizedBox(width: 10),
                    Expanded(child: buildDropdown("Select Brand")),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Features",style: Style.titleStyle,),
              ),
              buildTextField("Search"),
              Row(
                children: [
                  CustomCheckBox(text: "Alarm",),
                  SizedBox(
                    width: 60,
                  ),
                  CustomCheckBox(text: "Cruise Control",),
            ],
          ),
              Row(
                children: [
                  CustomCheckBox(text: "Bluetooth",),
                  SizedBox(
                    width: 35,
                  ),
                  CustomCheckBox(text: "Front Parking Sensor",),


                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text(
                      "Location",style: Style.titleStyle,),
                    SizedBox(width: 105,),
                    Text(
                      "Price",style: Style.titleStyle,),
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(
                      width: 165,
                      child: buildTextField("Search Location",)),
                  SizedBox(
                    width: 30,
                  ),
                  SizedBox(
                      width: 165,
                      child: buildTextField("Enter Price")),

                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Description",style: Style.titleStyle,),
              ),
              DescriptionTextField(hint: "Write description about your car"),
              SizedBox(
                  height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.camera_alt,color: Colors.black,),
                  Text(
                    "Upload images/Video",style: Style.textStyle16.copyWith(color: Colors.black,fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {

                  },
                  child: Text(
                    "Sell your car",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

            ]),
        )),
    );
  }
}
