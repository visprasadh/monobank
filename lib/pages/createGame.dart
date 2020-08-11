import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:monobank/widgets/blackButton.dart';
import 'dart:math';

class CreateGame extends StatelessWidget {
  double randomNumber;
  CreateGame() {
    Random random = new Random();
    randomNumber = random.nextDouble();
    print(randomNumber);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                width: double.infinity,
                child: Text(
                  'Monobank',
                  style: TextStyle(
                    fontFamily: 'Coves',
                    fontSize: 40,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: QrImage(
                  data: randomNumber.toString(),
                  version: QrVersions.auto,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 100,
                ),
                child: Text(
                  'Ask other players to join the game by scanning the QR Code. Start the game once all the players have joined',
                  style: TextStyle(
                    fontFamily: 'Coves',
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              BlackButton(
                label: 'Start Game',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
