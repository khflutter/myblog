import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  final String _title;

  NewPage(this._title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${_title}"),
      ),
      body: Center(
        child: Text(
          "${_title}",
          style: Theme.of(context).textTheme.title,
        ),
      ),
    );
  }
}
