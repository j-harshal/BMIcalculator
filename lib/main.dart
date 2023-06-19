import 'package:flutter/material.dart';
import 'package:newproject/screens/input_page.dart';


void main()
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> { 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData.dark(),
      color: Colors.black,
      home: InpputPage(),);
  }
}