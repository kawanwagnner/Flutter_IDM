import 'package:flutter/material.dart';

InputDecoration textFieldDecoration = InputDecoration(
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(18.0),
  ),
  hintText: 'Pesquisar na Loja',
  prefixIcon: const Icon(Icons.search),
  fillColor: const Color.fromARGB(26, 158, 158, 158),
  filled: true,
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(18.0),
    borderSide: const BorderSide(color: Colors.blue, width: 2.0),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(18.0),
    borderSide: BorderSide(color: Colors.grey, width: 1.0),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(18.0),
    borderSide: BorderSide(color: Colors.red, width: 1.0),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(18.0),
    borderSide: BorderSide(color: Colors.red, width: 2.0),
  ),
);
