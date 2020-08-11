import 'package:flutter/material.dart';

class BlackButton extends StatelessWidget {
  final String label;
  final Function onPressed;

  BlackButton({
    @required this.label,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          onPressed: onPressed,
          color: Colors.black,
          child: Container(
            padding: EdgeInsets.all(15),
            width: double.infinity,
            child: Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Coves',
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
