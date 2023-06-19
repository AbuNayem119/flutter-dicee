import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var numberr = 5;
  var num2 = 3;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: Text(
              'Dicee',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: (){
                    setState(() {
                      numberr = Random().nextInt(6)+1;
                      num2 = Random().nextInt(6)+1;
                    });
                  },
                  child: Image.asset('images/dice$numberr.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: (){
                    setState(() {
                      numberr = Random().nextInt(6)+1;
                      num2 = Random().nextInt(6)+1;
                    });
                  },
                  child: Image(
                    image: AssetImage('images/dice${num2}.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}

