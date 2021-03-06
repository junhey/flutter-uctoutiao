import 'package:flutter/material.dart';
import 'dart:convert';

class DetailPage extends StatefulWidget {
    final String id;

    DetailPage(this.id);

    @override
    State<StatefulWidget> createState() {
        // TODO: implement createState
        return new _DetailState();
    }
}

class _DetailState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('详情页'),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(widget.id),
                RaisedButton(
                    onPressed: () => Navigator.pop(context, '详情页传参'),
                    child: Text('返回列表页')
                )
              ],
            )
        )
    );
  }
}