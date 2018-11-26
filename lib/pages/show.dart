import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  final String _title;

  NewPage(this._title);

  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget._title}"),
      ),
      body: Center(
        child: Text(
          "${widget._title}",
          style: Theme.of(context).textTheme.title,
        ),
      ),
    );
  }
}
