import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildDropdown(String hint) {
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
