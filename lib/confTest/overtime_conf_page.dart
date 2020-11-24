
import 'package:flutter/material.dart';

// ignore: camel_case_types
class overtime_conf_page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('超過時間設定'),
      ),
      body: Center(
        child: ChangeForm(),
      ),
    );
  }
}

class ChangeForm extends StatefulWidget {
  @override
  _ChangeFormState createState() => _ChangeFormState();
}

class _ChangeFormState extends State<ChangeForm> {

  String _text = '';

  void _handleText(String e) {
    setState(() {
      _text = e;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: <Widget>[
            Text(
              '$_text',
              style: const TextStyle(
                  color: Colors.red,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500
              ),
            ),
            TextFormField(
              enabled: true,
              // 入力数
              maxLength: 3,
              maxLengthEnforced: false,
              style: const TextStyle(color: Colors.red),
              obscureText: false,
              maxLines:1 ,
              decoration: const InputDecoration(
                icon: Icon(Icons.face),
                hintText: '超過時間を設定してください（分）',
              ),
              validator: (String value) {
              return !value.contains('@') ? 'アットマーク「＠」がありません。' : null;
            },
              onSaved: (String value) {
                this._text = value;
              },
              //パスワード
              onChanged: _handleText,
            ),
            const Text('呼び出しを行ってから来店するまでの'),
            const Text('許容時間を設定します'),

            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/thome');
              },
              child: const Text('push'),
            ),
          ],
        )
    );  //数字だけ入力
  }
}
