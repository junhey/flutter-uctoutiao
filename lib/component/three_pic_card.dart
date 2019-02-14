import 'package:flutter/material.dart';
import '../modules/listModel.dart';
import 'index.dart';
import 'package:fluro/fluro.dart';
import '../routes/index.dart';

class ThreePicCard extends StatelessWidget {
  final ListItem item;

  ThreePicCard({this.item, Key key}) : super(key: key);

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
            child:  Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(bottom: 12.0),
                          child: CardTitle(title: item.title),
                        ),
                        Container(
                            padding: const EdgeInsets.only(bottom: 6.0),
                            child: Row(children: <Widget>[
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.only(right: 2.5),
                                  child: CardPic(
                                    url: item.picUris[0],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.only(right: 2.5),
                                  child: CardPic(
                                    url: item.picUris[1],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: CardPic(
                                    url: item.picUris[2],
                                  ),
                                ),
                              ),
                            ])),
                        CardAuthor(name: '${item.author}  ${item.cmtCount} 评'),
                      ],
                    ),
                  ),
                ],
              ),
            ));
  }
}
