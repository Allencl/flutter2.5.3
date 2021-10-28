import 'package:flutter/material.dart';



// 左边 侧栏
class WisLeftDrawer extends StatefulWidget {
  const WisLeftDrawer({Key? key}) : super(key: key);

  @override
  _WisLeftDrawer createState() => _WisLeftDrawer();
}

class _WisLeftDrawer extends State<WisLeftDrawer> {

  @override
  Widget build(BuildContext context) {
      return Drawer(
        child: Stack(
          children: <Widget>[
            Container(
              color: Colors.blue,
              padding: const EdgeInsets.fromLTRB(0,42,0,0),
              height: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 100,
                        margin: const EdgeInsets.fromLTRB(0,10,0,0),
                        child: const CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage("assets/images/img3.jpg")
                        )                
                      ),

                      const Padding(
                        padding: EdgeInsets.fromLTRB(0,22,0,5),
                        child: Text(
                          '李某某',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white
                          ),
                        ),
                      ),

                      const Padding(
                        padding: EdgeInsets.fromLTRB(0,5,0,5),
                        child: Text(
                          '项目经理',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white
                          ),
                        ),
                      ),

                      const Padding(
                        padding: EdgeInsets.fromLTRB(0,5,0,5),
                        child: Text(
                          '18732129809',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white
                          ),
                        ),
                      ),

                      const Padding(
                        padding: EdgeInsets.fromLTRB(0,2,0,5),
                        child: Text(
                          'jieama_sdsd@outlook.com.cn',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white
                          ),
                        ),
                      ),                      
                    ],
                  )
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.fromLTRB(0,310,0,0),
              child: ListView(
                children:const <Widget>[
                  ListTile(
                    leading: Icon(Icons.message),
                    title: Text('消息'),
                  ),
                  ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text('描述'),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('设置'),
                  ),
                ],
              ),
            )

          ]
        )
      ); 
  }
}