import 'package:flutter/material.dart';
import '../modules/listModel.dart';
import 'index.dart';
import 'package:fluro/fluro.dart';
import '../routes/index.dart';

class LeftTextCard extends StatelessWidget {
  final ListItem item;

  LeftTextCard({this.item, Key key}) : super(key: key);

  // 跳转到详情页
  intentTo(BuildContext context) {
    Routes.router.navigateTo(
        context, '${Routes.detail}?id=${item.id}',//跳转路径
        transition: TransitionType.inFromRight//过场效果
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 12.0, left: 14.0, right: 14.0),
        child: GestureDetector(
          onTap: () => intentTo(context),
          child: 
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(bottom: 12.0, right: 8.0),
                            child: CardTitle(title: item.title),
                          ),
                          CardAuthor(name: '${item.author}  ${item.cmtCount} 评'),
                        ],
                      ),
                      flex: 2,
                    ),
                    Expanded(
                      child: Container(
                        child: CardPic(
                          url: item.picUris[0],
                        ),
                      ),
                      flex: 1
                    ),              
                  ],
                ),
        ));
  }
}
