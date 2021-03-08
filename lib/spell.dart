import 'package:flutter/material.dart';

class Spell extends StatefulWidget {
  _SpellState createState() => _SpellState();
}
class _SpellState extends State<Spell> {
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
                      'Word',
                      style: TextStyle(fontSize: 50),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                //英语输入框
                TextField(
                  keyboardType: TextInputType.text,
                  autocorrect: true,//直接获取焦点
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    labelText: '                  请输入单词',
                  ),
                  // onChanged: _textFieldChanged,
                  autofocus: false,
                ),
                SizedBox(
                  height: 70,
                ),
                //英标
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '[wɜːd] ',
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
                //中间按钮
                Container(
                  height: 100,
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
                            Navigator.pushNamed(context, '/review');
                          },
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: IconButton(
                          icon: Icon(Icons.visibility),
                          iconSize: 30,
                          onPressed: () {

                          },
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: IconButton(
                          icon: Icon(Icons.check),
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