import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  _SearchState createState() => _SearchState();
}
class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Flex(direction: Axis.horizontal, children: <Widget>[
                  //输入框
                  Expanded(
                    flex: 9,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        icon: Icon(Icons.search),
                        labelText: '请输入您要查询的单词',
                      ),
                      // onChanged: _textFieldChanged,
                      autofocus: false,
                    ),
                  ),
                  //返回按钮
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      icon: Icon(Icons.replay),
                      iconSize: 30,
                      onPressed: () {
                        //跳转到主页面
                        Navigator.pushNamed(context, '/home');
                      },
                    ),
                  ),
                ]),
              ),
              //单词显示
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "单词",
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
              //英标显示
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "英标",
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
              //单词内容显示-----存在问题！！！
              Expanded(
                child: Text(
                  "123124123123213",
                  maxLines: 100,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
