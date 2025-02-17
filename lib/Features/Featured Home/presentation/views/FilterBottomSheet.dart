import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/Styles/styles.dart';

mixin FilterBottomSheet {
  void showFilterSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Center(
          child: FractionallySizedBox(
            heightFactor: 0.6,
            widthFactor: 0.9,
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  StatefulBuilder(
                    builder: (context, setState) {
                      int selectedTabIndex = 0; // لحفظ الفهرس المُحدد

                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // الكود هنا هيعتمد على الفهرس
                          _filterTab("All", selectedTabIndex == 0, () {
                            setState(() {
                              selectedTabIndex = 0;
                            });
                          }),
                          _filterTab("New", selectedTabIndex == 1, () {
                            setState(() {
                              selectedTabIndex = 1;
                            });
                          }),
                          _filterTab("Used", selectedTabIndex == 2, () {
                            setState(() {
                              selectedTabIndex = 2;
                            });
                          }),
                        ],
                      );
                    },
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(child: _buildDropdown("Model")),
                      SizedBox(width: 10),
                      Expanded(child: _buildDropdown("Brand")),
                    ],
                  ),
                  SizedBox(height: 15),
                  _buildTextField("Location", Icons.location_on_outlined),
                  SizedBox(height: 15),
                  _buildPriceSlider(context),
                  SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 50),
                    ),
                    child: Text("Search", style: Style.textStyle16),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _filterTab(String text, bool isSelected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.deepOrange : Colors.black54,
            ),
          ),
          if (isSelected)
            Container(
              margin: EdgeInsets.only(top: 5),
              width: 100,
              height: 3,
              color: Colors.deepOrange,
            ),
        ],
      ),
    );
  }

  Widget _buildDropdown(String hint) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
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
      ),
      items: ["TOYOTA", "Jeep", "Hundai", "BMW", "AUDI"]
          .map((e) => DropdownMenuItem(value: e, child: Text(e)))
          .toList(),
      onChanged: (value) {},
      hint: Text(hint),
    );
  }

  Widget _buildTextField(String hint, IconData icon) {
    return TextField(
      decoration: InputDecoration(
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
        prefixIcon: Icon(Icons.location_on_outlined, color: Colors.black, size: 25),
      ),
    );
  }

  Widget _buildPriceSlider(BuildContext context) {
    RangeValues _currentRangeValues = RangeValues(1000, 20000);

    return StatefulBuilder(
      builder: (context, setState) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Price Range", style: Style.textStyle16.copyWith(color: Colors.black, fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Rs. ${_currentRangeValues.start.toStringAsFixed(0)}", style: TextStyle(color: Colors.grey)),
                SizedBox(width: 10),
                Text("Rs. ${_currentRangeValues.end.toStringAsFixed(0)}", style: TextStyle(color: Colors.grey)),
              ],
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                activeTrackColor: Colors.deepOrange,
                inactiveTrackColor: Colors.grey,
                thumbColor: Colors.deepOrange,
                overlayColor: Colors.orange.withOpacity(0.2),
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12),
                trackHeight: 4,
              ),
              child: RangeSlider(
                min: 0,
                max: 20000,
                values: _currentRangeValues,
                onChanged: (RangeValues values) {
                  setState(() {
                    _currentRangeValues = values;
                  });
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
