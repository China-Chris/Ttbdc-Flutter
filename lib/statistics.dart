import 'package:flutter/material.dart';

class Statistics extends StatefulWidget {
  _StatisticsState createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          title: Text("统计"),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //修改密码条
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '正在学习',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '当前词书',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  InkWell(
                    child: Text(
                      ">专升本英语",
                      style: TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/change');
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '已学：',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    '21',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '总词书：',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    '2710',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              //分割线
              Divider(height: 50, color: Colors.black),
              SizedBox(
                height: 20,
              ),
              Text(
                '我的数据',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '今日学习&复习：',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    '15',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '累计学习：',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    '21',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
