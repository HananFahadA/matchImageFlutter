import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var numlf = 1, numrt = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 54, 120, 244),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              numlf == numrt ? "مبروك لقد ربحت" : "حاول مرة اخرى",
              style: TextStyle(
                  fontSize: 30,
                  color: numlf == numrt ? Colors.red : Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          numlf = Random().nextInt(4) + 1;
                        });
                      },
                      child: Image.asset("images/a$numlf.png"),
                    ),
                  ),
                  Expanded(
                    child: FloatingActionButton(
                      onPressed: () => {
                        setState(() {
                          numrt = Random().nextInt(4) + 1;
                        })
                      },
                      child: Image.asset("images/a$numrt.png"),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
