import 'package:flutter/material.dart';
import 'package:flutter_app/change.dart';
import 'package:flutter_app/glossary.dart';
import 'package:flutter_app/home.dart';
import 'package:flutter_app/information.dart';
import 'package:flutter_app/login.dart';
import 'package:flutter_app/register.dart';
import 'package:flutter_app/review.dart';
import 'package:flutter_app/spell.dart';
import 'package:flutter_app/statistics.dart';
import 'package:flutter_app/study.dart';
import 'package:flutter_app/search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      initialRoute: '/glossary', //初始路径
      routes: {
        '/': (context) => Login(),  //登陆页面
        '/register': (context) => ReGisTer(),//注册页面
        '/home': (context) => Home(),//主页面
        '/information': (context) => InFormation(),//个人信息页面
        '/change':(context)=>Change(),//修改密码页面
        '/search':(context)=>Search(),//单词查找页面
        '/study':(context)=>Study(),//单词学习页面
        '/review':(context)=>Review(),//单词复习页面
        '/spell':(context)=>Spell(),//单词拼写页面
        '/statistics':(context)=>Statistics(),//统计页面
        '/glossary':(context)=>Glossary(),//生词本页面
      },
    );
  }
}
