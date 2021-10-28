import 'package:flutter/material.dart';


// 自定义 头部导航条
class WisSliverBar extends StatefulWidget {

    final String title;              // 标题
    final double height;             // 高度
    final Widget backgroundImage;    // 背景图片

    
    const WisSliverBar({
      Key ? key,
      this.title='',
      this.height=60,
      required this.backgroundImage
    }) : super(key: key);  

    @override
    _WisSliverBar createState() => _WisSliverBar();
}


class _WisSliverBar extends State<WisSliverBar> {

    @override
    Widget build(BuildContext context) {
      return SliverAppBar(
        expandedHeight: widget.height,
        floating: false,
        pinned: true,
        snap: false,         
        flexibleSpace: FlexibleSpaceBar(
          stretchModes: const <StretchMode>[
            StretchMode.zoomBackground,
            StretchMode.blurBackground,
            StretchMode.fadeTitle,
          ],
          centerTitle: true,          
          title:  Text(widget.title),
          background: widget.backgroundImage,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_circle),
            tooltip: '添加',
            onPressed: () { 

            },
          ),
        ]
      );
    }  

}