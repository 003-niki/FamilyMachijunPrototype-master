
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('login'),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Text('push'),
            ),
          ],
        ),
      ),
    );
  }
}