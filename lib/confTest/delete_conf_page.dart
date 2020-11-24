
import 'package:flutter/material.dart';

class delete_conf_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('部屋削除sss'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('login'),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/thome');
              },
              child: Text('push'),
            ),
          ],
        ),
      ),
    );
  }
}