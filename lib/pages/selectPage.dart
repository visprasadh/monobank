import 'package:flutter/material.dart';
import 'package:monobank/pages/createGame.dart';
import 'package:monobank/pages/joinGame.dart';

class SelectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        GestureDetector(
          child: Container(
            child: Center(
              child: Text(
                'Create game',
                style: TextStyle(
                  fontFamily: 'Coves',
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ),
            color: Colors.black,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
          ),
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => CreateGame()),
          ),
        ),
        GestureDetector(
          child: Container(
            child: Center(
              child: Text(
                'Join game',
                style: TextStyle(
                  fontFamily: 'Coves',
                  fontSize: 40,
                  color: Colors.black,
                ),
              ),
            ),
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
          ),
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => JoinGame(),
            ),
          ),
        ),
      ],
    ));
  }
}
