import 'package:flutter/material.dart';


import 'package:wis_flutter2/home.dart';     // 首页
import 'package:wis_flutter2/login.dart';    // 登录页
import 'package:wis_flutter2/view/online/index.dart';         // 上线
import 'package:wis_flutter2/view/getMaterial/index.dart';    // 叫料


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        initialRoute: '/',
        routes: <String, WidgetBuilder> { 
          '/': (BuildContext context) => const HomePage(),
          '/home': (BuildContext context) => const HomePage(),
          '/login': (BuildContext context) => const LoginPage(),
          '/online': (BuildContext context) => const OnlinePage(),
          '/getMaterial': (BuildContext context) => const GetMaterialPage(),

          

        },               
    );
  }
}

