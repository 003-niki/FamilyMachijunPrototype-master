// 顧客用画面
//ユーザー名の入力

import 'package:flutter/material.dart';

class UserEntry extends StatelessWidget {
  final String _appBarName = 'ニックネームを教えて！';
  String userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarName),
      ),
      body: Form(
        child: Center(
          child: Column(
            children: <Widget>[
              const Text('ニックネーム'),
              TextFormField(
                  decoration: const InputDecoration(labelText: 'nickName')),
              RaisedButton(
                onPressed: () => Navigator.of(context).pushNamed('/qr_reader'),
                child: const Text('入室へ'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
