import 'package:flutter/material.dart';
import 'package:monobank/pages/selectPage.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Monobank',
                        style: TextStyle(
                          fontFamily: 'Coves',
                          fontSize: 50,
                        ),
                      ),
                      Text(
                        'An Open Source Monopoly Banking App',
                        style: TextStyle(
                          fontFamily: 'Coves',
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(
                    Icons.fingerprint,
                    size: 40,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Text('Press and hold anywhere to get started',
                      style: TextStyle(fontFamily: 'Coves')),
                )
              ],
            ),
          ),
          FlatButton(
            onPressed: () {},
            onLongPress: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SelectPage(),
              ),
            ),
            child: Container(
              height: double.infinity,
              width: double.infinity,
            ),
          )
        ],
      ),
    );
  }
}
