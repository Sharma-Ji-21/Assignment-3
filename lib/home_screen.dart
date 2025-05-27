import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var leftDice = 1;
  var rightDice = 1;
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dicee",
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w900,
              fontSize: 30.0),
        ),
        backgroundColor: Colors.red[500],
      ),
      backgroundColor: Colors.red[500],
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          var random = Random();
                          setState(() {
                            leftDice = random.nextInt(6) + 1;
                            count++;
                          });
                          print("Single tap detected left $leftDice");
                        },
                        child: Image(
                          image: AssetImage('images/dice$leftDice.png'),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          var random = Random();
                          setState(() {
                            rightDice = random.nextInt(6) + 1;
                            count++;
                          });
                          print("Single tap detected right $rightDice");
                        },
                        child: Image(
                          image: AssetImage('images/dice$rightDice.png'),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Text("Count : $count"),
              IconButton(
                  onPressed: () {
                    setState(() {
                      count = 0;
                    });
                  },
                  icon: Icon(Icons.restart_alt))
            ],
          ),
        ),
      ),
    );
  }
}
