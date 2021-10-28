import 'package:flutter/material.dart';


import 'package:wis_flutter2/packages/home_head.dart';  // 自定义 头部导航条   

import 'package:wis_flutter2/packages/divider.dart';    // 线
import 'package:wis_flutter2/packages/table.dart';      // 横向 table               



// ******  table 横向
class WisListPageTableCross extends StatelessWidget {

    final List<Map> columns;  // 列
    final List<Map> data;  // 数据


    const WisListPageTableCross({
        Key ? key,
        required this.columns,
        required this.data,
    }) : super(key: key);


    @override
    Widget build(BuildContext context) {
      return ListPageTableCross(
        columns: columns,
        data: data, 
      ); 
    }
}

// 自定义 头部导航条
class WisSliverAppBar extends StatelessWidget {

    final String title;              // 标题
    final double height;             // 高度
    final Widget backgroundImage;    // 背景图片

    const WisSliverAppBar({
        Key ? key,
        this.title='WIS Home',
        this.height=200,
        required this.backgroundImage
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return WisSliverBar(
        title: title,
        height: height,
        backgroundImage: backgroundImage
      ); 
    }
}


// 横线
class WisDivider extends StatelessWidget {

    final String text;  // 文本

    const WisDivider({
      Key ? key,
      this.text="",
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return DividerCrosswise(
        text: text,
      ); 
    }
}