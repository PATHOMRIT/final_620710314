
import 'package:final_620710314/pages/animal_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Word Quiz Game',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const AnimalList(),
    );
  }
}
