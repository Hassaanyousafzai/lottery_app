import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color.fromARGB(255, 175, 219, 255),
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 150,
          ),
          const Center(
            child: Text(
              "Welcome to the \nLottery App",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Center(
            child: Text(
              "Your Lucky Number is 10",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  color: x == 5
                      ? Color.fromARGB(255, 201, 255, 214)
                      : Color.fromARGB(255, 255, 214, 211),
                  borderRadius: BorderRadius.circular(20)),
              child: x == 5
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.done,
                          color: Colors.green,
                          size: 40,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: Text(
                            "Yayyy, You Won :D",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.error,
                          color: Colors.red,
                          size: 35,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: Text(
                            "Your Number is $x, \nBetter luck next time! :D",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    )),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.next_plan,
          size: 30,
        ),
        onPressed: () {
          x = random.nextInt(6);
          print(x);
          setState(() {});
        },
      ),
    ));
  }
}
