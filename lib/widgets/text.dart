import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String data;

  MyText(this.data);

  @override
  Widget build(BuildContext context) {
    return Text(
      data
    );
  }
}