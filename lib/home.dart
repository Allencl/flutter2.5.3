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