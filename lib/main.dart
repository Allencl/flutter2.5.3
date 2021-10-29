import 'package:flutter/material.dart';


import 'package:wis_flutter2/home.dart';     // 首页
import 'package:wis_flutter2/login.dart';    // 登录页




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
        initialRoute: '/login',
        routes: <String, WidgetBuilder> { 
          '/': (BuildContext context) => const HomePage(),
          '/home': (BuildContext context) => const HomePage(),
          '/login': (BuildContext context) => const LoginPage(),
        },               
    );
  }
}

