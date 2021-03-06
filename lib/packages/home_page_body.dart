import 'package:flutter/material.dart';


// 首页 body 
class HomePageBody extends StatelessWidget{

    final dynamic title;         // 标题
    final List<Map> children;   // 列表组
    final dynamic onClick;           // 点击事件
    final dynamic type;        // 卡片类型


    const HomePageBody({
      Key ? key,
      required this.children,
      this.onClick,
      this.type,
      this.title
    }) : super(key: key); 


    // 卡片点击
    void _onClick(option){
      if( onClick != null ) {
        onClick( option );
      }
    }


    // 组件 初始化 
    _bodyInit() {

        List<Widget> listBody = <Widget>[];

        // 带有 标题
        if( title!=null ){
          listBody.add(
            Row(
              children: <Widget>[
                Text(
                  title.toString(),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(81,90,110,1),
                    fontWeight: FontWeight.w700,
                  )                
                )
              ],
            )
          );
        }

        for (var o in children) {
          listBody.add( 
            _HomePageBodyICON(
                type: type,
                target:o,
                text:o["text"],
                icons:o["icons"],
                navigatorTarget:o["navigatorTarget"],
                onClick: _onClick,
            )
          );
        }       

        return listBody;
    }

    @override
    Widget build(BuildContext context) {
        return Wrap(
            spacing: 10.0, 
            runSpacing: 10.0, 
            children: _bodyInit()
        ); 
    }  
}


// 首页 body ICON
class _HomePageBodyICON extends StatelessWidget{

    final String text;
    final IconData icons;
    final String navigatorTarget;    // 跳转页面
    final dynamic onClick;           // 点击事件
    final dynamic target;            // 对象
    final dynamic type;             // 卡片类型


    const _HomePageBodyICON({
        Key ? key,
        this.text="",
        this.target,
        this.type,
        this.icons = Icons.accessible,
        this.navigatorTarget="",
        this.onClick
    }) : super(key: key);




    @override
    Widget build(BuildContext context) {

        Widget _typeCard(){
          if( type != null ){
            if( type=="number" ){
              return Container(
                padding: const EdgeInsets.fromLTRB(0,8,0,0),
                height: 34,
                child: Text(
                  target['number'].toString(),
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 18,
                    color: (target['color']!=null)?target['color']:const Color.fromRGBO(81,90,110,1),
                    fontWeight: FontWeight.w700,
                  )                  
                )
              );
            }
          }

          return SizedBox(
            height: 34,
            child: Icon(
              icons,
              size: 32,
              color: (target['color']!=null)?target['color']:Colors.blue
            )
          );

        }

        return InkWell(
          onTap:(){
            if( navigatorTarget.isNotEmpty ) Navigator.pushNamed(context,navigatorTarget);
            onClick(target);
          },
          child: Container(
            width: 80,
            height: 80,
            padding:const EdgeInsets.fromLTRB(8,12,8,8),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius:const BorderRadius.all(Radius.circular(5.0)),
              border: Border.all(width:1,color:const Color.fromRGBO(232, 234, 236,1)),
            ),
            child: Column(
              children:  <Widget>[
                _typeCard(),                        
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,3,0,0),
                  child: Text(
                    text,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      letterSpacing: 1.0, 
                      fontSize: 14,
                      fontWeight: FontWeight.w500, 
                      color:  Color.fromRGBO(58,58,58,1)
                    ),
                  ),                    
                )
              ], 
            )
          )
        );  
        

    }

}