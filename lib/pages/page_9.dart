import 'package:flutter/material.dart';

// TODO: Beautify this page according to your imagination
class Page9 extends StatefulWidget {
  const Page9({super.key});

  @override
  State<Page9> createState() => _Page9State();
}

class _Page9State extends State<Page9> {
  int counter = 0;

//Increment Function
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

//Decrement Function
  void decrementCounter() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFF2),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(child: Text('Page 9')),
          Center(
            child: Expanded(
              child: Text(
                counter.toString(),
                //Text Styling
                style: const TextStyle(
                  fontSize: 200,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff41D3BD),
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(8, 8),
                      blurRadius: 3.0,
                      color: Color(0x9041D3BD),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  //Calling Function
                  decrementCounter();
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Press this Button \nto\n Decrement Counter',
                    //Text Styling
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  //Calling Function
                  incrementCounter();
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Press this Button \nto\n Increment Counter',
                    //Text Styling
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
