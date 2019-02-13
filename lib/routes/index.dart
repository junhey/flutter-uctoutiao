import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import '../views/detail.dart';
import '../views/index.dart';

class Routes {
  static Router router;
  static String home = '/';
  static String detail = '/detail/:id';

  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context,
            Map<String, List<String>> params) {
            return new MyHomePage();
        }
    );
    // 详情页调用
    router.define(detail, handler: new Handler(
        handlerFunc: (BuildContext context,
            Map<String, List<String>> params) {
            String id = params['id']?.first;
            return new Detail(id);
        }
    ));
    // 首页调用
    router.define(home, handler: new Handler(
        handlerFunc: (BuildContext context,
            Map<String, List<String>> params) {
            return new MyHomePage();
        }
    ));
    Routes.router = router;
  }
}