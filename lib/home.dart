import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
      decoration: BoxDecoration(
        image: new DecorationImage(
          fit: BoxFit.cover,
          image: new NetworkImage(
              'http://r.photo.store.qq.com/psc?/V10Vv81y3PMtVr/45NBuzDIW489QBoVep5mcRYKawEn9ozai0Z00U7Hq0ZirWw848ThcZTTWCLN.eH.4qRkJj1cAdB2uQOih89AKRxRUDKZ*Zbse8nwZyxglgM!/r'
              //   'http://r.photo.store.qq.com/psc?/V10Vv81y3PMtVr/45NBuzDIW489QBoVep5mcdwzB80PHKiWXad2PEiApTbY9anQNl8AnjlwtagGgpdoynY540bD8kcqeZ.NQiMoL5L3xsWoWwGyQdaENvmAEHI!/r'
              ),
        ),
      ),
      child: Column(
        children: [
            Row(
            children: [
            SizedBox(
            width: 14,
            ),
                    Center(
                      child: Container(
                        //最左边的头像栏
                        height: 120,
                        child:
                        InkWell(
                            child:
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          onTap:(){
                            Navigator.pushNamed(context, '/information');
                          } ,
                        )
                      ),
                    )
                    ],
                  ),
            Center(
              child: Container(
                height: 550,
                alignment: Alignment.center,
                child: Text(
                  "加油背单词你可以的!",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonTheme(
                  height: 70,
                  minWidth: 170,
                  child: RaisedButton(
                    //圆角,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, '/study');
                    },
                    child: Text(
                      "Learn",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                ButtonTheme(
                  height: 70,
                  minWidth: 170,
                  child: RaisedButton(
                    //圆角
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onPressed:(){
                      Navigator.pushNamed(context, '/review');
                    },
                    child: Text(
                      "Review",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          Container(
            height: 100,
            alignment: Alignment(0, 1),
            child: Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                //第一个按钮
                // Expanded(
                //   flex: 1,
                //   child: IconButton(
                //     icon: Icon(Icons.headset_outlined),
                //     iconSize: 30,
                //     onPressed: () {},
                //   ),
                // ),

                Expanded(
                  flex: 1,
                  child: IconButton(
                    icon: Icon(Icons.star_border),
                    iconSize: 30,
                    onPressed: () {
                      Navigator.pushNamed(context, '/glossary');
                    },
                  ),
                ),

                Expanded(
                  flex: 1,
                  child: IconButton(
                    icon: Icon(Icons.library_books),
                    iconSize: 30,
                    onPressed: () {
                      Navigator.pushNamed(context, '/statistics');
                    },
                  ),
                ),

                Expanded(
                  flex: 1,
                  child: IconButton(
                    icon: Icon(Icons.search),
                    iconSize: 30,
                    onPressed: () {
                      Navigator.pushNamed(context, '/search');
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    )));
  }
}





