import 'package:meta/meta.dart';

class Api {
  static final host = 'http://iflow.uczzd.cn/';
  static final path = 'iflow/api/v1/channel/100';
  static final newsList = 'app=uc-iflow&sp_gz=4&xss_enc=0&recoid=1293989830726680450&ftime=1550113088050&method=his&count=20&no_op=0&auto=0&content_ratio=0&_tm=1550047186202&ssign=AAMtDBrvbGYLOWktZFo9bRv9X8BOvp9sHIVlyTlmiUj6s2fiqq6DIgKr3VFBYh7Id%2F4%3D&scene=0&earphone=0&moving=0&puser=0&enable_ad=1&ad_extra=AAMXR2M9zDR58pt%2FPE%2F0J3S%2B&his_size=0&cindex=1&acpf=uc&acid=AAN4Tuabwtj2UU9Q9z%2FqQfXB&active_time=AAOkRww2l54RDyJwnhKoZ3hp&ressc=44&uc_param_str=dnnivebichfrmintcpgimewidsudsvlissnwlo&dn=32062180029-e591b700&nn=AARVaHJeHGQt5ob2BFG37R5NUvaFSASpxEZhZOPwxBOLkw%3D%3D&ve=12.2.9.1139&bi=997&fr=iphone&mi=iPhone11%2C8&nt=2&pc=AAQRAtQtd9XY54gmHPf775eH5wqz75MY4GggfcI1thvLD0mncsdcW5rCcc8DIYcmpwfOhcFj0a4QLvp1xEGEue5j&me=AATMQ3D6a0FZcgcLFWggvaxonryIxcAEfVp%2BCqO%2FtkbFQvR%2FNE1g%2FXqu%2F3T0bR2I%2FRY%3D&ut=AAQ0jOp2RkI3e150NEyKYioKD%2FNRR0KC2PsWqS%2BjFhEyhg%3D%3D&ai=AAQ%3D&sv=ent&lb=AATc5wxBTG7fcH6pVawC7x9YrTqlY5U%2BDE%2FuoW7xJc65Ag%3D%3D&ss=414x896&nw=WIFI&lo=AANCuVJr%2B7KXiBK7PhEZU9k4Oasqk9B9UrxTh5rBYU1VluhZr0W%2F1gIoHNjZxIQcTYJtqoVt6H2LbARFEwIqpOEKiy67%2FxxJ4tiw5xbNju6bxB%2F88ialdKrG7BBJWAuXuN4%3D';
  static String getListUrl() {
    return '$host$path?$newsList';
  }
  static String getDetailUrl({@required String id}) {
    return null;
  }
}