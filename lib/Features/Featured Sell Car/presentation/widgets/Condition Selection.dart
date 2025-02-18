import 'package:flutter/material.dart';

class ConditionSelection extends StatefulWidget {
  const ConditionSelection({super.key});

  @override
  _ConditionSelectionState createState() => _ConditionSelectionState();
}

class _ConditionSelectionState extends State<ConditionSelection> {
  String? _selectedCondition = 'New';

  final List<String> conditions = ['New', 'Used'];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: conditions.map((condition) {
          return Row(
            children: [
              Radio<String>(
                value: condition,
                groupValue: _selectedCondition,
                activeColor: Colors.grey,
                onChanged: (value) {
                  setState(() {
                    _selectedCondition = value;
                  });
                },
              ),
              Text(
                condition,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 16),
            ],
          );
        }).toList(),
      ),
    );
  }
}
