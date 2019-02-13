// 首页
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import '../routes/index.dart';
import 'dart:convert';

class MyHomePage extends StatefulWidget {
    @override
    _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  String message = '一';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第一个页面'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.chevron_right),
              onPressed: () => intentTo(context)
          )
        ],
      ),
      body: Center(
          child: Text(message)
      ),
    );
  }

  ///跳转到第二个界面
  intentTo(BuildContext context) {
    ///字符串编码
    Routes.router.navigateTo(
        context, '${Routes.detail}?id=123',//跳转路径
        transition: TransitionType.inFromRight//过场效果
    ).then((result) {//回传值
      if (result != null) {
        message = result;
      }
    });
  }
}