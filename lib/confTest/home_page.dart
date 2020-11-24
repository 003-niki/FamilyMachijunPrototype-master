//home_page.dart

import 'package:flutter/material.dart';
import './new_route_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('設定'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           //Text('home'),
            RaisedButton(
              onPressed: () => (
                  Navigator.of(context).pushNamed('login')),
              child: Text('店名変更'),
            ),
            RaisedButton(
              onPressed: () => (
                Navigator.of(context).pushNamed('/home')),
                child: Text('部屋削除'),
              ),
            RaisedButton( onPressed: () => (
                Navigator.of(context).pushNamed('/time')),
              child: Text('超過時間設定'),
            ),
            RaisedButton(
              onPressed: () => (
                  Navigator.of(context).pushNamed('/note')),
              child: Text('メモページ'),
            ),
          ],
        ),
      ),
    );
  }
}
