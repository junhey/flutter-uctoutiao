import 'package:flutter/material.dart';

class CardTitle extends StatelessWidget {
  final String title;

  CardTitle({this.title, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: 20.0,
      ),
    );
  }
}
