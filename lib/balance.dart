import 'package:flutter/material.dart';

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
          Text("$balance"),
        ],
      ),
    );
  }
}
