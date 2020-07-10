import 'package:flutter/material.dart';
import 'package:monobank/pages/welcome.dart';

void main() => runApp(MonoBank());

class MonoBank extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(home:Welcome());
  }
}