import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Balance extends StatelessWidget {
  double balance;
  Balance({super.key, required this.balance});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 9,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Balance"),
          SizedBox(
            height: 20,
          ),
          Text(
            "\$ ${NumberFormat.simpleCurrency(name: '', locale: 'en_US').format(balance)}",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
