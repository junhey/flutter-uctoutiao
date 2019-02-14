import 'package:meta/meta.dart';

@immutable
class ListItem {
  final String id;
  final String openUrl;
  final String title;
  final String author;
  final String recoid;
  final int ftime;
  final int cmtCount;
  final List<String> picUris;

  ListItem({
    this.id,
    this.openUrl, 
    this.title, 
    this.author, 
    this.picUris, 
    this.ftime, 
    this.recoid, 
    this.cmtCount = 0
  });
}