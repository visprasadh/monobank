import 'package:flutter/foundation.dart';
import 'package:monobank/models/player.dart';

class Transaction {
  final Player from;
  final Player to;
  final double amount;
  final DateTime time;

  Transaction({
    @required this.from,
    @required this.to,
    @required this.amount,
    @required this.time,
  });
}
