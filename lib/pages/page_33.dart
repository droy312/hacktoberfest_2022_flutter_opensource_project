import 'package:flutter/material.dart';

// TODO: Beautify this page according to your imagination
class Page33 extends StatelessWidget {
  const Page33({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Welcome to Page 33'),
          elevation: 0,
          backgroundColor: Colors.black87,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Transform(
                  transform: Matrix4.identity()..rotateZ(10 * 3.1415927 / 180),
                  child: PhysicalModel(
                    shape: BoxShape.rectangle,
                    color: Colors.transparent,
                    elevation: 5,
                    shadowColor: Colors.grey,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..rotateZ(5 * 3.1415927 / 180),
                      child: Container(
                        alignment: Alignment.center,
                        height: 200,
                        width: 200,
                        color: Colors.black87,
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                              'Hello and Welcome to Page 33!!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                          ),
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
