import 'package:flutter/material.dart';
import 'package:flutter_app/login.dart';

class ReGisTer extends StatefulWidget {
  _RegisTerState createState() => _RegisTerState();
}

class _RegisTerState extends State<ReGisTer> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          title: Text("请您注册"),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //用户名输入框
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  icon: Icon(Icons.text_fields),
                  labelText: '请输入你的用户名',
                ),
                // onChanged: _textFieldChanged,
                autofocus: false,
              ),
              SizedBox(
                height: 20,
              ),
              //密码输入框
              TextField(
                obscureText: true,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  icon: Icon(Icons.vpn_key),
                  labelText: '请输入你的密码',
                ),
                // onChanged: _textFieldChanged,
                autofocus: false,
              ),
              //密码确认框
              SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: true,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  icon: Icon(Icons.vpn_key),
                  labelText: '请再输入你的密码',
                ),
                // onChanged: _textFieldChanged,
                autofocus: false,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //注册按钮
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: RaisedButton(
                        child: Text("注册"),
                        onPressed: () {
                          //开始登录
                        }),
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
