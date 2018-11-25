import 'package:flutter/material.dart';

// pages
import './pages/home.dart';

class Login extends StatefulWidget {
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15.0),
        // color: Theme.of(context).primaryColor,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text(
                  "Welcome My App",
                  style: Theme.of(context).textTheme.headline,
                ),
                SizedBox(height: 25.0),
                TextField(
                  maxLines: 1,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(labelText: "E-Mail Address"),
                  onChanged: (String value) {
                    setState(() {
                      email = value;
                    });
                  },
                ),
                SizedBox(height: 20.0),
                TextField(
                  maxLines: 1,
                  maxLength: 12,
                  obscureText: true,
                  decoration: InputDecoration(labelText: "Password"),
                  onChanged: (String value) {
                    setState(() {
                      password = value;
                    });
                  },
                ),
                SizedBox(height: 20.0),
                RaisedButton(
                  child: Text("Login"),
                  onPressed: () {
                    String _email = "admin@admin.com";
                    String _password = "admin@123";
                    print(email);
                    print(password);
                    if (email == _email && password == _password) {
                      Navigator.pushReplacement(
                        context, 
                        MaterialPageRoute(builder: (BuildContext context) => Home())
                      );
                    } else {
                      print("Login failed");
                    }
                  },
                  color: Theme.of(context).primaryColor,
                  textColor: Color(0xFFFFFFFF),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
