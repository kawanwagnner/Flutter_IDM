import 'package:flutter/material.dart';

class GenderCheckbox extends StatelessWidget {
  final bool isMale;
  final bool isFemale;
  final ValueChanged<bool> onMaleChanged;
  final ValueChanged<bool> onFemaleChanged;

  GenderCheckbox({
    required this.isMale,
    required this.isFemale,
    required this.onMaleChanged,
    required this.onFemaleChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text('Masculino'),
        Checkbox(
          value: isMale,
          onChanged: (bool? value) {
            onMaleChanged(value ?? false);
          },
        ),
        Text('Feminino'),
        Checkbox(
          value: isFemale,
          onChanged: (bool? value) {
            onFemaleChanged(value ?? false);
          },
        ),
      ],
    );
  }
}
