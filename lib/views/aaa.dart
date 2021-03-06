// 首页
import 'package:flutter/material.dart';
import 'dart:async';
import '../utils/http.dart';
import '../store/api.dart';
import '../component/index.dart';
import '../modules/listModel.dart';

class ListPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ListPage>{
  // List<ListItem> list = [];//列表要展示的数据
  List list = new List(); //列表要展示的数据
  ScrollController _scrollController = ScrollController(); //listview的控制器
  bool isLoading = false; //是否正在加载数据

  List<ListItem> _fixRes(res) {
    print(res);
    List<dynamic> items = res['items'];
    Map<String, dynamic> articles = res['articles'];
    List<ListItem> output = [];
    items.forEach((item) {
      String id = item['id'];
      var article = articles[id];
      if (article != null) {
        List<dynamic> thumbnails = article['thumbnails'];
        List<String> urls = [];
        thumbnails.forEach((thumbnail) {
          urls..add(thumbnail['url']);
        });
        String title = article['title'];
        String openUrl = article['zzd_url'];
        String author = article['source_name'];
        int ftime = article['grab_time'];
        int cmtCount = article['cmt_cnt'];
        String recoid = article['recoid'];
        output..add(ListItem(
              openUrl: openUrl,
              title: title,
              author: author,
              picUris: urls,
              recoid: recoid,
              ftime: ftime,
              cmtCount: cmtCount
            )
          );
      }
    });
    print(output.length);
    return output;
  }

  // dio请求数据
  Future reqData() {
    final dio = createDio();
    final url = Api.getListUrl();
    print(url);
    return dio.get(url).then((res) {
      print('list长度：${res.data['data'].articles}');
      list = _fixRes(res.data['data']);
      print('list${list}');
      return list;
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        print('load end');
        _getMore();
      }
    });
  }

  // 初始化list数据 加延时模仿网络请求
  Future getData() async {
    // await Future.delayed(Duration(seconds: 2), () {
    //    return this.reqData().then((list){
    //      setState(() {
    //        list = list.add(list);
    //      });
    //    });
    // });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('UC头条'),
      ),
      body: RefreshIndicator(
        onRefresh: _onRefresh,
        child: ListView.builder(
          itemBuilder: _renderRow,
          itemCount: list.length + 1,
          controller: _scrollController,
        ),
      ),
    );
  }

  Widget _renderRow(BuildContext context, int index) {
    print(list);
    // if (index < list.length) {
    //   Widget card;
    //   switch (list[index].picUris.length) {
    //     case 0:
    //       card = TextCard(item: list[index]);
    //       break;
    //     case 3:
    //       card = ThreePicCard(item: list[index]);
    //       break;
    //     default:
    //       card = LeftTextCard(item: list[index]);
    //   }
    //   return card;
    // }
    return _getMoreWidget();
  }

  // 下拉刷新方法,为list重新赋值
  Future<Null> _onRefresh() async {
    await Future.delayed(Duration(seconds: 3), () {
      print('refresh');
      // return this.reqData().then((list){
      //     setState(() {
      //       list = list.add(list);
      //     });
      // });
    });
  }

  // 上拉加载更多
  Future _getMore() async {
    if (!isLoading) {
      setState(() {
        isLoading = true;
      });
      await Future.delayed(Duration(seconds: 1), () {
        print('load more');
        // return this.reqData().then((list){
        //   setState(() {
        //     list = list.addAll(list);
        //   });
        // });
      });
    }
  }

  // 加载更多时显示的组件,给用户提示
  Widget _getMoreWidget() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              '加载中...',
              style: TextStyle(fontSize: 16.0),
            ),
            CircularProgressIndicator(
              strokeWidth: 1.0,
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }
}