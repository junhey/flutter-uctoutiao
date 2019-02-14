import 'package:flutter/material.dart';

class CardAuthor extends StatelessWidget {
  final String name;

  CardAuthor({this.name, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
        color: Colors.grey[500],
      ),
    );
  }
}
