import 'package:flutter/material.dart';
import 'package:myblog/model/travel.dart';

// pages
import './../login.dart';
import './../pages/travel/create.dart';

class MyDrawer extends StatelessWidget {
  final List<Travel> myListTravel;

  MyDrawer(this.myListTravel);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(child: Image.asset("assets/logo.png")),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              "Home",
              style: Theme.of(context).textTheme.title,
            ),
            onTap: () {
              Navigator.pop(context);
            },
            selected: true,
          ),
          ListTile(
            leading: Icon(Icons.add_circle),
            title: Text(
              "Add New Travel",
              style: Theme.of(context).textTheme.title,
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (ctxt) => NewTravel(myListTravel)));
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text(
              "Logout",
              style: Theme.of(context).textTheme.title,
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Login()));
            },
          ),
        ],
      ),
    );
  }
}
