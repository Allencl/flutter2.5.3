import 'package:flutter/material.dart';


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
        appBar: AppBar( title: const Text('首页') ),  
        backgroundColor: Colors.blue[10],
        body: const Text("sss")
      );
  }
}