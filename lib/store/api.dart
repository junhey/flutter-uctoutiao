import 'package:meta/meta.dart';

class Api {
  static final host = 'http://iflow.uczzd.cn/';
  static final path = 'iflow/api/v1/channel/100';
  static final newsList = 'app=uc-iflow&sp_gz=4&xss_enc=0&ab_tag=1168A2;1167C2;&recoid=7410374990011175254&ftime=1547099879611&method=new&count=20&no_op=0&auto=2&content_ratio=0&_tm=1547193407696&ssign=AAPEBAeEAxlu2Ib91edDVSR4c2nljZdxWYxsn7knV2mvSr3ZLKqEGqBvZmw6qX23utI%3D&scene=0&earphone=0&moving=-1&puser=0&enable_ad=1&ad_extra=AAPtYwIQWftB3nixavZFw3Q8&cindex=1&active_time=AAMdxrFyfL4mN3Ul58rJJDFd&ressc=44&uc_param_str=dnnivebichfrmintcpgimewidsudsvlissnw&dn=33002649689-8032251b&nn=AASDRT%2FvAZbxLrG0GdnKBLE%2BX%2BpfVuqVMFhNppdbL575ng%3D%3D&ve=12.2.6.1124&bi=997&ch=iphone%40ucweb.com&fr=iphone&mi=x86_64&nt=99&pc=AAQNqqrcScBIyzoh2ImR7%2BiChP98JXzE%2F6lGHpFPppOyJirABSQLGyNsaIbI2N4sIZPglR8afX3cmgmltJ%2BZdgAlbg1E4oM2kjM2cOvI2BPXpw%3D%3D&me=AASDEKoe7fmdUN0CzlrL2fOQYR6fGshkvpsas5JUedbgppZj3ScPufDTVKv5mtRWM2c%3D&ut=AAQSmTRUAJpBYWkF89bS3bVZ7V%2BKUs3r5OUKw6V0DxtbEA%3D%3D&ai=AAQ%3D&sv=test&lb=AATc5wxBTG7fcH6pVawC7x9YrTqlY5U%2BDE%2FuoW7xJc65Ag%3D%3D&ss=414x896&nw=WIFI';
  static String getListUrl() {
    return '$host$path?$newsList';
  }
  static String getDetailUrl({@required String id}) {
    return null;
  }
}