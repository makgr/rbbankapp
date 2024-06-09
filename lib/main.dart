import 'package:flutter/material.dart';
import 'package:rbbankapp/add_money_button.dart';
import 'package:rbbankapp/balance.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double balance = 0;

  void addbalance() async {
    setState(() {
      balance += 500;
    });

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('decimal', balance);
  }

  @override
  void initState() {
    loadbalance();
    // TODO: implement initState
    super.initState();
  }

  void loadbalance() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      balance = prefs.getDouble('decimal') ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RB Bank App',
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 65, 63, 68),
          centerTitle: true,
          title: const Text('RB Bank App'),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          color: Colors.blueGrey[700],
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Balance(
                balance: balance,
              ),
              AddMoneyButton(
                addMoneyFunction: addbalance,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
