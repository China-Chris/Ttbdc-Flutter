import 'package:flutter/material.dart';

class Review extends StatefulWidget {
  _ReviewState createState() => _ReviewState();
}

class _ReviewState extends State<Review>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return
        MaterialApp(
          home: Scaffold(
            body: Padding(
              padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //右上角数字
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '0',
                        style: TextStyle(fontSize: 40),
                      ),
                      Text(
                        '/',
                        style: TextStyle(fontSize: 40),
                      ),
                      Text(
                        '10',
                        style: TextStyle(fontSize: 40),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  //单词
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        ' ',
                        style: TextStyle(fontSize: 60),
                      ),
                    ],
                  ),
                  //英标
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        ' ',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  //单词词义
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 400,
                        width: 300,
                        child: Expanded(
                          child: RichText(
                            softWrap: true,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'n. 单词;词;字;说的话;话语;言语;诺言;许诺;保证',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: 'v. 措辞;用词',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  //底部按钮
                  Container(
                    height: 160,
                    alignment: Alignment(0, 1),
                    child: Flex(
                      direction: Axis.horizontal,
                      children: <Widget>[

                        Expanded(
                          flex: 1,
                          child: IconButton(
                            icon: Icon(Icons.arrow_back),
                            iconSize: 30,
                            onPressed: (
                                ) {
                              //回退按钮
                              Navigator.pushNamed(context, '/home');
                            },
                          ),
                        ),



                        Expanded(
                          flex: 1,
                          child: FlatButton(
                            //下一词的单击事件
                              onPressed: () {
                                Navigator.pushNamed(context, '/spell');
                              },
                              child: Text(
                                "拼写",
                                style: TextStyle(
                                  fontSize: 20,
                                ),

                              )),


                        ),

                        Expanded(
                          flex: 1,
                          child: IconButton(
                            icon: Icon(Icons.star_border),
                            iconSize: 30,
                            onPressed: () {

                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
  }
}