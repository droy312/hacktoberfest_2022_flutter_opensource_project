import 'package:flutter/material.dart';

// TODO: Beautify this page according to your imagination
class Page11 extends StatelessWidget {
  const Page11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        title: const Text('Page 11'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.purple[600],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hi There!!',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.15,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple[600]),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1600577916048-804c9191e36c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8d2VsY29tZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                  ),
                ),
                const Positioned(
                  bottom: 30,
                  right: 90,
                  child: Text(
                    'To Page 11',
                    style: TextStyle(
                        color: Colors.amberAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
