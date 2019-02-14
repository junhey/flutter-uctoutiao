import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CardPic extends StatelessWidget {
  final String url;

  CardPic({this.url, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: CachedNetworkImage(
          imageUrl: url,
          fit: BoxFit.cover,
          placeholder: Container(
            decoration: new BoxDecoration(color: Color(0xeaeae9e6)),
          ),
          errorWidget: Icon(Icons.error),
        ),
        width: 98.0, height: 72.0);
  }
}
