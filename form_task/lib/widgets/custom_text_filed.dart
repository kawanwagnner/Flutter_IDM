import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final TextInputType? keyboardType;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;

  CustomTextField({
    required this.label,
    this.keyboardType,
    this.onSaved,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(labelText: label),
      keyboardType: keyboardType,
      onSaved: onSaved,
      validator: validator,
    );
  }
}
