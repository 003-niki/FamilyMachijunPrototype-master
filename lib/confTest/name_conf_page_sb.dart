
import 'package:flutter/material.dart';

// ignore: camel_case_types
class name_conf_page_sb extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('店名変更'),
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
            TextField(
              enabled: true,
              // 入力数
              maxLength: 100,
              maxLengthEnforced: false,
              style: const TextStyle(color: Colors.red),
              obscureText: false,
              maxLines:1 ,
              decoration: const InputDecoration(
                icon: Icon(Icons.face),
                hintText: '変更する店名を入力してください',
              ),
              //パスワード
              onChanged: _handleText,
            ),
            const Text('login'),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/thome');
              },
              child: const Text('push'),
            ),
          ],
        )
    );
  }
}
