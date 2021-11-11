import 'package:flutter/material.dart';

import 'package:wis_flutter2/bottom_navigation_bar.dart';  // 底部按钮
import 'package:wis_flutter2/index.dart';             // wis flutter2 组件 

// 叫料主页
class GetMaterialPage extends StatefulWidget {
  const GetMaterialPage({Key? key}) : super(key: key);

  @override
  _GetMaterialPage createState() => _GetMaterialPage();
}

class _GetMaterialPage extends State<GetMaterialPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar( title: const Text('产品上线') ),  // 头部导航条
        bottomNavigationBar: const WisBottomNavigationBar(),
        backgroundColor: Colors.white,
        body: ListView(
          padding: const EdgeInsets.fromLTRB(8,8,8,8),
          children: <Widget>[

            const SizedBox(height:6,child:Text('')),
            Row(
              children: <Widget>[
                Expanded(
                  child: ElevatedButton( 
                    child: const Text("添加叫料明细"),
                    onPressed: (){
                      ScaffoldMessenger.of(context).showSnackBar(
                         SnackBar(
                          backgroundColor:const Color.fromRGBO(25,190,107,0.5),
                          content: Row(
                            children: const<Widget>[
                              Icon(Icons.done,color: Colors.white),
                              SizedBox(width:10,child:Text('')),
                              Text('操作成功！'),
                            ],
                          )
                        )
                      );
                    },
                  ),
                ),                                         
              ],
            ),
            const SizedBox(height:6,child:Text('')),
            const WisListPageTableCross(
              title:'叫料明细',
              columns:[
                { "key":"sn","name":"物料" },
                { "key":"code","name":"数量" },
              ],
              data:[
                {
                  "sn": "SN128868767",
                  "code": "23",
                },
                {
                  "sn": "SN98868767",
                  "code": "88",
                },
              ]
            ),

          ],
        )
        
    ); 
  }
}