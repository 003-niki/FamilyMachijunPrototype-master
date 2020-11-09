// 店舗用画面
// ログイン画面

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    // 入力されたメールアドレス
    String newUserEmail = '';
    // 入力されたパスワード
    String newUserPassword = "";
    // 登録・ログインに関する情報を表示
    var infoText = '';
    // アプリバーの表示名
    final _appBarName = 'ログイン画面！';
    // キーボード操作の促し
    final _passwordFocusNode = FocusNode(); // 追加

    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarName),
      ),
      body: Form(
        child: Center(
          child: Column(
            children: <Widget>[
              const Text('店舗名'),
              TextFormField(
                decoration: const InputDecoration(labelText: 'storeName'),
                textInputAction: TextInputAction.next, // 追加
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_passwordFocusNode); // 変更
                },
              ),
              const Text('メールアドレス'),
              TextFormField(
                decoration: const InputDecoration(labelText: 'mailAdress'),
                textInputAction: TextInputAction.next, // 追加
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_passwordFocusNode); // 変更
                },
              ),
              const Text('パスワード'),
              TextFormField(
                decoration: const InputDecoration(labelText: 'passWord'),
                obscureText: true, // 追加
              ),
              RaisedButton(
                onPressed: () =>
                    Navigator.of(context).pushNamed('/qr_generate'),
                child: const Text('ユーザー登録'),
              ),
              Text(infoText)
            ],
          ),
        ),
      ),
    );
  }
}
