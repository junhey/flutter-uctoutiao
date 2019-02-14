import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'routes/index.dart';
import 'modules/globe.dart';

// 启动
void main() => runApp(new MyApp());
class MyApp extends StatelessWidget {
  // 初始化并配置路由
  Router createRouter() {
    Application.router = new Router();
    Routes.configureRoutes(Application.router);
    return Application.router;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColorBrightness: Brightness.dark
      ),
      onGenerateRoute: createRouter().generator
    );
  }
}
