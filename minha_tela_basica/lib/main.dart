import 'package:flutter/material.dart';
import 'package:minha_tela_basica/view/myCart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCartScreen(),
    );
  }
}
