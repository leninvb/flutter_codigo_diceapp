import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int derDice = 1;
  int izqDice = 1;


  @override
  Widget build(BuildContext context) {
    print("built");

    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: const ºText("DiceAPP"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 10,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              flex:1,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: (){
                    izqDice = Random().nextInt(6)+1;
                    derDice = Random().nextInt(6)+1;

                    setState(() {

                    });
                  },
                  child: Image.asset(
                    'assets/images/dice$izqDice.png',
                  ),
                ),
              ),
            ),

            Expanded(
              flex:1,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: (){
                    derDice = Random().nextInt(6)+1;
                    izqDice = Random().nextInt(6)+1;


                    setState(() {

                    });
                  },
                  child: Image.asset(
                    'assets/images/dice$derDice.png',
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
