import 'package:flutter/material.dart';
import 'package:tab/screens/Home.dart';

void main() {
  runApp(MaterialApp(home: MyApp(),debugShowCheckedModeBanner: false,));
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}
