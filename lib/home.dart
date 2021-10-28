import 'package:flutter/material.dart';

import 'package:wis_flutter2/bottom_navigation_bar.dart';  // 底部按钮
import 'package:wis_flutter2/left_drawer.dart';       // 左边侧栏
import 'package:wis_flutter2/index.dart';             // wis flutter2 组件 


// 首页
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar( title: const Text('首页') ),  
      bottomNavigationBar: const WisBottomNavigationBar(),
      drawer: const WisLeftDrawer(),        
      backgroundColor: Colors.blue[10],
      body:  CustomScrollView(
        slivers: [

          // 自定义 导航条
          WisSliverAppBar(
            title:'WIS HOME',
            height:160,
            backgroundImage: Image.asset("assets/images/img2.png", fit: BoxFit.fill),               
          ), 


          SliverList(
              delegate: SliverChildListDelegate(
                [


                  // 首页 body iocn 卡片
                    Container(
                    padding: const EdgeInsets.fromLTRB(8,8,8,8),
                    margin:const EdgeInsets.fromLTRB(8,8,8,8),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                        border:  Border.all(
                          width:1,
                          color: const Color(0xffe5e5e5) 
                        )
                    ),
                    child: WisHomeBody(
                      title:'页面示例',
                      onClick:(option){
                        // 点击事件
                        // print(option);
                      },
                      children: const [
                        {
                          "text":"Table",
                          "icons": Icons.view_list,
                          "navigatorTarget": "/table"   // 跳转页面
                        },
                        {
                          "text":"查询页面",
                          "icons": Icons.search,
                          "navigatorTarget": "/search"
                        },
                        {
                          "text":"Tab页面",
                          "icons": Icons.tab,
                          "color":Colors.pink,
                          "navigatorTarget": "/tab"
                        },                              
                        {
                          "text":"表单示例",
                          "icons": Icons.text_format,
                          "color":Colors.yellow,
                          "navigatorTarget": "/form"
                        },
                        {
                          "text":"图文页面",
                          "icons": Icons.view_list,
                          "navigatorTarget": "/textImage"   // 跳转页面
                        },
                        {
                          "text":"产品展示",
                          "icons": Icons.search,
                          "color": Colors.deepPurple, 
                          "navigatorTarget": "/productToggle"
                        },
                        {
                          "text":"按钮组",
                          "icons": Icons.backup,
                          "color": Colors.yellowAccent, 
                          "navigatorTarget": "/btn"
                        },                              
                        {
                          "text":"测试页面",
                          "icons": Icons.text_format,
                          "navigatorTarget": "/test"
                        }
                      ]
                    )
                  ),


                  const WisListPageTableCross(
                    title:'等待队列',
                    columns:[
                        { "key":"name1","name":"姓名" },
                        { "key":"name2","name":"时间" },
                        { "key":"name3","name":"时间2" },

                    ],
                    data:[
                        {
                          "name1": "的的",
                          "name2": "的的",
                          "name3": "的的",
                        },
                        {
                          "name1": "尔尔",
                          "name2": "尔尔",
                          "name3": "尔尔",
                        }
                    ]
                  ),


                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),
                  const Text("2121212"),

                  const WisDivider(
                    text: "到底了",
                  )
                ],
              ),
          ),
        ],
      )
    );
  }
}