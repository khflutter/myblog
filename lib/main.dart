import 'package:flutter/material.dart';

// Pages
import './pages/home.dart';
// import './pages/new_travel.dart';
import './login.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void initState() { 
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: "Nunito",
      ),
      home: Home(),
    );
  }
}
