import 'package:cocktail/homepage.dart';
import 'package:flutter/material.dart';

const myClr = Colors.pink;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pakistani",
      theme: ThemeData(
        primarySwatch: myClr,
        fontFamily: "Pacifico",
      ),
      home: HomePage(),
    );
  }
}
