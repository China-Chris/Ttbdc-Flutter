import 'package:flutter/material.dart';

class Glossary extends StatefulWidget {
  _GlossaryState createState() => _GlossaryState();
}
class _GlossaryState extends State<Glossary> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return
    MaterialApp(
    home: Scaffold(
      appBar: new AppBar(
        title: Text("生词本"),
        centerTitle: true,
      ),
      body:
          //列表
    Scrollbar(
      child:
       ListView.builder(
         padding: const EdgeInsets.all(0.0),
         itemBuilder: (context ,index){
         return
            ListTile(
              //title: new Text("${item[index]}"),

              title:new Text("i ：单词内容",
                  style: TextStyle(color: Colors.black, fontSize: 20.0)

              ),
       );
      },
        itemCount: 200,
        itemExtent: 60,
      ),
    ),
    ),
  );

  }
}