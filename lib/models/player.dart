import 'package:flutter/foundation.dart';

class Player {
  String uid;
  final String name;
  double balance;
  int finishingPlace;

  Player({@required this.name, this.balance});
}
