import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Dicee Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void dicee() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: TextButton(
                onPressed: dicee,
                child: Image.asset('images/dice$leftDiceNumber.png',
                  color: Colors.red, // Đổi màu theo ý muốn
                  colorBlendMode: BlendMode.modulate, // Chế độ hòa trộn màu
                  fit: BoxFit.contain,),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: dicee,
                child: Image.asset('images/dice$rightDiceNumber.png',
                  color: Colors.red, // Đổi màu theo ý muốn
                  colorBlendMode: BlendMode.modulate, // Chế độ hòa trộn màu
                  fit: BoxFit.contain,),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: dicee,
        tooltip: 'Roll Dice',
        child: const Icon(Icons.casino),
      ),
    );
  }
}
