//main.dart

import 'package:flutter/material.dart';
import 'package:pre_app/confTest/text._note_page.dart';
import 'package:pre_app/confTest/time_conf_page.dart';
import 'package:pre_app/confTest/time_conf_page_sb.dart';
import './login_page.dart';
import './home_page.dart';
import 'delete_conf_page.dart';
import 'name_conf_page.dart';
import 'name_conf_page_sb.dart';
import 'overtime_conf_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'login',
      routes: {
        'login': (context) => name_conf_page_sb(),
        '/home': (context) => delete_conf_page(),
        '/time': (context) => overtime_conf_page(),
        '/note': (context) => text_note_page(),
        '/thome': (context) => HomePage(),
      },
    );
  }
}