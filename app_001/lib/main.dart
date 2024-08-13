import 'package:app_001/view/DashBoard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(
    title: '',
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required String title});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DashBoard(title: 'Flutter Demo Home Page'),
    );
  }
}
