import 'package:flutter/material.dart';




// table 横向
class ListPageTableCross extends StatefulWidget {

  // final List<Object> columns;
  // final List<Object> data;
  final List columns;
  final List data;

  
  const ListPageTableCross({
      Key ? key,
      required this.columns,
      required this.data,
  }) : super(key: key);

  @override
  _ListPageTableCross createState() => _ListPageTableCross();
}

class _ListPageTableCross extends State<ListPageTableCross> {


    // table init
    _tableRowInit() {

      List columnsNow = widget.columns;
      List dataNow = widget.data;

      var lenTitle = widget.columns.length;
      var lenData = dataNow.length;

      // 表头
      List<Container> listHead = <Container>[];

      // body 
      List<TableRow> list = <TableRow>[
        TableRow(
          children: listHead,
        ),
      ];


      // 表头
      dynamic head;   // 表头
      for (var i = 0; i < lenTitle; i++) {
        head = Container(                      
          padding: const EdgeInsets.fromLTRB(8,5,8,5),
          decoration:const BoxDecoration(
            color:  Color.fromRGBO(248,248,249,1)
          ),
          child: Text(
            columnsNow[i]['name'],
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Color.fromRGBO(81,90,110,1),
              fontWeight: FontWeight.w700,
            ),
          )
        ); 
        listHead.add(head);
      }


      // 数据
      dynamic row;   // 行数据
      dynamic content;
      for (var i = 0; i < lenData; i++) {
        List<Container> rows = <Container>[];

        for (var j = 0; j < lenTitle; j++) {
          row = Container(
            padding: const EdgeInsets.fromLTRB(8,5,8,5),
            child:Text(
              dataNow[i][columnsNow[j]['key']],
              textAlign: TextAlign.center,
              style: const TextStyle(
              color:  Color.fromRGBO(81,90,110,1)
            ),
          ));
          rows.add(row);
        }

        content = TableRow(
          children: rows,
        );
        list.add(content);
      }

      return list;
    }

    @override
    Widget build(BuildContext context) {
      return Container(
        margin: const EdgeInsets.fromLTRB(8,8,8,8),
        padding: const EdgeInsets.fromLTRB(2,2,2,2),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          border: Border.all(width:1,color:Colors.white),
        ),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(2,8,8,8),
                  child: const Text('标题',
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      // height: 2,
                      color: Color.fromRGBO(81,90,110,1),
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ),
              ]
            ),

            Table(
              children:  _tableRowInit(),
            ),
          ]
        )
      );
    }  
}