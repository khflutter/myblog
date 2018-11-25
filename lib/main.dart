import 'package:flutter/material.dart';

// Pages
import './pages/home.dart';
import './login.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _activePage = 0;
  var _pages = [Login(), Home()];
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
      home: _pages[_activePage],
    );
  }
}
