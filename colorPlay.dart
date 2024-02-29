import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ColorPlay extends StatefulWidget {
  const ColorPlay({super.key});

  @override
  State<ColorPlay> createState() => _ColorPlayState();
}

class _ColorPlayState extends State<ColorPlay> {
  int a = 1;
  myFunc() {
    setState(() {});
    a++;
    if (a > 4) {
      a = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Row(
          children: [
            Container(
                height: 50,
                width: 50,
                color: a == 1
                    ? Colors.red
                    : a == 2
                        ? Colors.green
                        : a == 3
                            ? Colors.yellow
                            : a == 4
                                ? Colors.blue
                                : Colors.black),
            Container(
                height: 50,
                width: 50,
                color: a == 1
                    ? Colors.blue
                    : a == 2
                        ? Colors.red
                        : a == 3
                            ? Colors.green
                            : a == 4
                                ? Colors.yellow
                                : Colors.black),
            Container(
                height: 50,
                width: 50,
                color: a == 1
                    ? Colors.yellow
                    : a == 2
                        ? Colors.blue
                        : a == 3
                            ? Colors.red
                            : a == 4
                                ? Colors.green
                                : Colors.black),
            Container(
                height: 50,
                width: 50,
                color: a == 1
                    ? Colors.green
                    : a == 2
                        ? Colors.yellow
                        : a == 3
                            ? Colors.blue
                            : a == 4
                                ? Colors.red
                                : Colors.black),
          ],
        ),
      ),
      // child: Container(
      //   height: 100,
      //   width: 150,
      //   color: a? Colors.greenAccent:Colors.amber
      // ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
          myFunc();
        },
        child: const Icon(Icons.touch_app),
      ),
    );
  }
}
