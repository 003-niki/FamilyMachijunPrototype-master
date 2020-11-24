import 'dart:io';
import 'package:flutter/material.dart';

import 'home_page.dart';



class text_note_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Memo with Flutter',
      routes: {
        '/thome': (context) => HomePage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TextWidget(title: 'Memo '),
    );
  }
}

class TextWidget extends StatefulWidget {
  TextWidget({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _TextWidgetState createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),

        body: ListView(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/thome');
              },
              child: const Text('push'),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Write something',
              ),

              maxLines: null,
            ),
          ],
        )
    );
  }
}
// import 'package:flutter/material.dart';
//
// // ignore: camel_case_types
// class text_note_page extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text(''),
//         ),
//         body: Center(
//           child: ChangeForm(),
//         ),
//       );
//   }
// }
//
// class ChangeForm extends StatefulWidget {
//   @override
//   _ChangeFormState createState() => _ChangeFormState();
// }
//
// class _ChangeFormState extends State<ChangeForm> {
//
//   String _text = '';
//
//   void _handleText(String e) {
//     setState(() {
//       _text = e;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         padding: const EdgeInsets.all(50.0),
//         child: Column(
//           children: <Widget>[
//             Text(
//               '$_text',
//               style: const TextStyle(
//                   color: Colors.red,
//                   fontSize: 30.0,
//                   fontWeight: FontWeight.w500
//               ),
//             ),
//             TextField(
//               enabled: true,
//               // 入力数
//               maxLength: 2000,
//               maxLengthEnforced: false,
//               style: const TextStyle(color: Colors.black),
//               obscureText: false,
//               maxLines:1 ,
//               decoration: const InputDecoration(
//                 icon: Icon(Icons.face),
//                 hintText: 'メモ、備考欄',
//               ),
//               //パスワード
//               onChanged: _handleText,
//             ),
//             const Text('login'),
//             RaisedButton(
//               onPressed: () {
//                 Navigator.pushNamed(context, '/thome');
//               },
//               child: const Text('push'),
//             ),
//           ],
//         )
//     );
//   }
// }
