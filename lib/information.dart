import 'package:flutter/material.dart';

class InFormation extends StatefulWidget {
  _InFormationState createState() => _InFormationState();
}

class _InFormationState extends State<InFormation> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          title: Text("个人信息"),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Container(
                  //最中间的头像栏
                  height: 150,
                  child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'),
                              fit: BoxFit.cover))),
                ),
              ),
              //分格线
              Divider(height: 50, color: Colors.black),
              //修改密码条
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '修改密码',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  InkWell(
                    child: Text(
                      ">",
                      style: TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/change');
                    },
                  ),
                ],
              ),
              //退出登陆按钮
            ],
          ),
        ),
      ),
    );
  }
}
