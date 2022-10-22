import 'package:flutter/material.dart';

// TODO: Beautify this page according to your imagination
class Page31 extends StatelessWidget {
  const Page31({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Welcome to Page 31'),
          elevation: 0,
          backgroundColor: Colors.black26,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PhysicalModel(
                color: Colors.white,
                elevation: 50,
                shadowColor: Colors.white,
                child: Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 200,
                  color: Colors.black87,
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        'Hello and Welcome to Page 31!!',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
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
