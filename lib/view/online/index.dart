import 'package:flutter/material.dart';

import 'package:wis_flutter2/bottom_navigation_bar.dart';  // 底部按钮
import 'package:wis_flutter2/index.dart';             // wis flutter2 组件 


// 上线主页
class OnlinePage extends StatefulWidget {
  const OnlinePage({Key? key}) : super(key: key);

  @override
  _OnlinePage createState() => _OnlinePage();
}

class _OnlinePage extends State<OnlinePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar( title: const Text('产品上线') ),  // 头部导航条
        bottomNavigationBar: const WisBottomNavigationBar(),
        backgroundColor: Colors.white,
        body: ListView(
          padding: const EdgeInsets.fromLTRB(8,8,8,8),
          children: <Widget>[

            const SizedBox(height:22,child:Text('')),
            Row(
              children: <Widget>[
                 const Expanded(
                  flex: 2,
                  child: Image(
                    image: AssetImage("assets/images/img4.png")
                  )                      
                ),
                 Expanded(
                  flex: 5,
                  child:  Column(
                    children: <Widget>[
                      Row(
                        children: const <Widget>[
                          Expanded(
                            flex: 2,
                            child: Text("价格产品:",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color:  Color.fromRGBO(81,90,110,1),
                                fontWeight: FontWeight.w600,
                              )                              
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Text("产品001",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                            )
                          ),
                        ],
                      ),
                      const SizedBox(height:3,child:Text('')),
                      Row(
                        children: const <Widget>[
                          Expanded(
                            flex: 2,
                            child: Text("设备:",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color:  Color.fromRGBO(81,90,110,1),
                                fontWeight: FontWeight.w600,
                              )                              
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Text("冲床加工",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                            )
                          ),
                        ],
                      ),
                      const SizedBox(height:3,child:Text('')),
                      Row(
                        children: const <Widget>[
                          Expanded(
                            flex: 2,
                            child: Text("工单号:",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color:  Color.fromRGBO(81,90,110,1),
                                fontWeight: FontWeight.w600,
                              )                              
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Text("2102333212",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                            )
                          ),
                        ],
                      ),
                      const SizedBox(height:3,child:Text('')),
                      Row(
                        children: const <Widget>[
                          Expanded(
                            flex: 2,
                            child: Text("工单数量:",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color:  Color.fromRGBO(81,90,110,1),
                                fontWeight: FontWeight.w600,
                              )                              
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Text("100",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                            )
                          ),
                        ],
                      ),
                      const SizedBox(height:3,child:Text('')),
                      Row(
                        children: const <Widget>[
                          Expanded(
                            flex: 2,
                            child: Text("上线数量:",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color:  Color.fromRGBO(81,90,110,1),
                                fontWeight: FontWeight.w600,
                              )                              
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Text("50",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                            )
                          ),
                        ],
                      )                                                                                           
                    ],
                  )
                ),                
              ],
            ),

            const SizedBox(height:32,child:Text('')),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 5,
                  child: ElevatedButton( 
                    child: const Text("生产SN"),
                    onPressed: (){
                      //
                    },
                  ),
                ),
                const Expanded(flex:1,child:Text("")),                
                Expanded(
                  flex: 5,
                  child:  ElevatedButton(
                    child: const Text("采集参数"),
                    onPressed: (){
                      //
                    },
                  ),
                ),   
                const Expanded(flex:1,child:Text("")),                
                Expanded(
                  flex: 5,
                  child:  ElevatedButton(
                    child: const Text("绑定关键件"),
                    onPressed: (){
                      //
                    },
                  ),
                ), 
                const Expanded(flex:1,child:Text("")),                
                Expanded(
                  flex: 5,
                  child:  ElevatedButton(
                    child: const Text("质检"),
                    onPressed: (){
                      //
                    },
                  ),
                ),                                           
              ],
            ),
            const SizedBox(height:10,child:Text('')),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 5,
                  child: ElevatedButton(
                    style:ButtonStyle(
                      backgroundColor:MaterialStateProperty.all(Colors.red[900]),
                    ),  
                    child: const Text("不合格录入"),
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
                const Expanded(flex:1,child:Text("")),                
                Expanded(
                  flex: 5,
                  child:  ElevatedButton(
                    child: const Text("控制下达"),
                    onPressed: (){
                      //
                    },
                  ),
                ),   
                const Expanded(flex:1,child:Text("")),                
                Expanded(
                  flex: 5,
                  child:  ElevatedButton(
                    style:ButtonStyle(
                      backgroundColor:MaterialStateProperty.all(Colors.green[700]),
                    ),                     
                    child: const Text("HOLD"),
                    onPressed: (){
                      //
                    },
                  ),
                ), 
                const Expanded(flex:1,child:Text("")),                
                Expanded(
                  flex: 5,
                  child:  ElevatedButton(
                    style:ButtonStyle(
                      backgroundColor:MaterialStateProperty.all(Colors.red[900]),
                    ),                      
                    child: const Text("UNHOLD"),
                    onPressed: (){
                      //
                    },
                  ),
                ),                                           
              ],
            ),
            const SizedBox(height:10,child:Text('')),
            const WisListPageTableCross(
              title:'等待队列',
              columns:[
                { "key":"sn","name":"SN" },
                { "key":"code","name":"托盘号" },
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

            const WisListPageTableCross(
              title:'过点队列',
              columns:[
                { "key":"sn","name":"SN" },
                { "key":"code","name":"托盘号" },
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