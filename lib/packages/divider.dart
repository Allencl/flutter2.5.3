import 'package:flutter/material.dart';


// 线  横向
class DividerCrosswise extends StatelessWidget{

    final String text;

    const DividerCrosswise({
        Key ? key,
        this.text="",
    }) : super(key: key);  

    @override
    Widget build(BuildContext context) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(8,16,8,16),
          child: Row(
            children: <Widget>[
              const Expanded(
                child: Divider()
              ),       
              Text(" "+text.toString()+" "),        
              const Expanded(
                  child: Divider()
              ),
            ]
          ),  
        );
    }  
}