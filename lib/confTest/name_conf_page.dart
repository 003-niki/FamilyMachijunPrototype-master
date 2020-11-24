
import 'package:flutter/material.dart';

class name_conf_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('名前設定'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('login'),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/thome');
              },
              child: const Text('push'),
            ),
          ],
        ),
      ),
    );
  }
}
