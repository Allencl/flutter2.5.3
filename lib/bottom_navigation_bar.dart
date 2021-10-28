import 'package:flutter/material.dart';



// 底部按钮
class WisBottomNavigationBar extends StatefulWidget {
  const WisBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _WisBottomNavigationBar createState() => _WisBottomNavigationBar();
}

class _WisBottomNavigationBar extends State<WisBottomNavigationBar> {

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }  

  @override
  Widget build(BuildContext context) {
      return  BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '首页',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: '报表分析',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: '追随查询',
          )
        ],
        selectedItemColor: Colors.blue[10],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped
      );
  }
}