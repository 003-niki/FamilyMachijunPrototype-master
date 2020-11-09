import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView'),
        ),
        body: ListView(
            children: [
              _menuItem("メニュー1", Icon(Icons.settings)),
              _menuItem("メニュー1", Icon(Icons.room)),
              _menuItem("メニュー4", Icon(Icons.local_shipping)),
              _menuItem("メニュー5", Icon(Icons.airplanemode_active)),

            ]
        ),
      ),
    );
  }

  Widget _menuItem(String title, Icon icon) {
    return GestureDetector(
      child:Container(
          padding: EdgeInsets.all(10.0),
          decoration: new BoxDecoration(
              border: new Border(bottom: BorderSide(width: 1.0, color: Colors.grey))
          ),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0),
                child:icon,
              ),
              Text(
                title,
                style: TextStyle(
                    color:Colors.red,
                    fontSize: 19.0
                ),
              ),
            ],
          )
      ),
      onTap: () {
        print("onTap called.");
      },
    );
  }
}
    //   const data = [
    //     Text("item0"), Text("item1"), Text("item2"), Text("item3"), Text("item4"),
    //   ];
    //   return MaterialApp(
    //     home: Scaffold(
    //       body: ListView(
    //           children: data
    //       ),
    //     ),
    //   );
    // }
    //
    // }

    //