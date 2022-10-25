import 'package:flutter/material.dart';

// TODO: Beautify this page according to your imagination
class Page32 extends StatelessWidget {
  const Page32({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Page 32'),
          elevation: 5,
          backgroundColor: Colors.amber,
        ),
        body: SingleChildScrollView(
         child: Center(
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
                  color: Colors.amber,
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        'Hello and Welcome to Page 32!!',
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
      ),
    );
  }
}
