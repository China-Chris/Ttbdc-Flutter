import 'package:flutter/material.dart';
import 'package:flutter_app/home.dart';

class Login extends StatefulWidget {
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          title: Text("登陆"),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Text(
                  '欢迎回来',
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ),
              //分格线
              Divider(height: 50, color: Colors.black),

              //用户名输入框

              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  labelText: '请输入你的用户名',
                ),
                // onChanged: _textFieldChanged,
                autofocus: false,
              ),

              SizedBox(
                height: 30,
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

              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //登陆按钮
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: RaisedButton(
                        child: Text("开始登录"),
                        onPressed: (
                            ) {
                          //判断用户名与密码
                          //跳转到登陆页面
                          Navigator.pushNamed(context, '/home');
                          //开始登录
                        }),
                  ),
                  //注册按钮
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: RaisedButton(
                        child: Text("注册按钮"),
                        onPressed: () {
                          //跳转到注册页面
                          Navigator.pushNamed(context, '/register');
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
