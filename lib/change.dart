import 'package:flutter/material.dart';

class Change extends StatefulWidget {
  _ChangePassWordState createState() => _ChangePassWordState();
}
class _ChangePassWordState extends State<Change> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          title: Text("修改密码"),
          centerTitle: true, //文字居中
        ),
        body:
        Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //新密码输入框
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  //icon: Icon(Icons.text_fields),
                  labelText: '请输入新密码',
                ),
                // onChanged: _textFieldChanged,
                autofocus: false,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //登陆按钮
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: RaisedButton(
                          child: Text("确认修改"),
                        onPressed: () {
                          //API
                        }),
                  ),
                ] ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
