import 'package:flutter/material.dart';
import 'package:flutter_apprentice_course/Screen/recipe_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Palatino',
        primarySwatch: Colors.grey,
      ),
      home: RecipiePage(),
    );
  }
}
