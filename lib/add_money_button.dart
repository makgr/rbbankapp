import 'package:flutter/material.dart';

class AddMoneyButton extends StatelessWidget {
  void Function() addMoneyFunction;
  AddMoneyButton({super.key, required this.addMoneyFunction});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: ElevatedButton(
        onPressed: addMoneyFunction,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber[700],
            minimumSize: Size(double.infinity, 0)),
        child: Text(
          "Add Balance",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
