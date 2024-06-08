import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void aFunction() {
    print("Button clicked.");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 65, 63, 68),
          centerTitle: true,
          title: Text('RB Bank App'),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          color: Colors.blueGrey[700],
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Balance"),
              ElevatedButton(
                onPressed: aFunction,
                child: Text("Click"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
