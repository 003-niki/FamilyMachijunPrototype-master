// 店舗用画面
// QRコードの提示を行う

// ToDo パスコード提示

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrGenerationPage extends StatefulWidget {
  @override
  _QrGenerationPageState createState() => _QrGenerationPageState();
}

class _QrGenerationPageState extends State<QrGenerationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Code Demo'),
      ),
      body: Center(
        child: QrImage(
          data: 'https://www.youtube.com/channel/UCENoC6MLc4pL-vehJyzSWmg',
          size: 200,
        ),
      ),
    );
  }
}
