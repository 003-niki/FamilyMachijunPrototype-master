//new_route_page.dart

import 'package:flutter/material.dart';

class NewRoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('newRoute'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('newRoute'),
            RaisedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text('pop'),
            )
          ],
        ),
      ),
    );
  }
}