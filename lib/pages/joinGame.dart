import 'package:flutter/material.dart';
import 'package:monobank/widgets/header.dart';
import 'package:monobank/widgets/blackButton.dart';
import 'package:barcode_scan/barcode_scan.dart';

class JoinGame extends StatefulWidget {
  @override
  _JoinGameState createState() => _JoinGameState();
}

class _JoinGameState extends State<JoinGame> {
  String qr;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Header(),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      'Gametag: $qr',
                      style: TextStyle(
                        fontFamily: 'Coves',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BlackButton(label: 'Scan code', onPressed: scan),
          ],
        ),
      ),
    );
  }

  Future scan() async {
    ScanResult code = await BarcodeScanner.scan();
    String qr = code.rawContent;
    setState(() => this.qr = qr);
  }
}
