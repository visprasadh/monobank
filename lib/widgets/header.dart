import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
      width: double.infinity,
      child: Text(
        'Monobank',
        style: TextStyle(
          fontFamily: 'Coves',
          fontSize: 40,
        ),
      ),
    );
  }
}
