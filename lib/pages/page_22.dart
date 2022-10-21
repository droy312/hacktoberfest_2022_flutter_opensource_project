import 'package:flutter/material.dart';

class Page22 extends StatelessWidget {
  const Page22({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        title: const Text('Page 22'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blue[600],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hi!!',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.15,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[600]),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1597953601374-1ff2d5640c85?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                  ),
                ),
                const Positioned(
                  bottom: 30,
                  right: 90,
                  child: Text(
                    'To Page 22',
                    style: TextStyle(
                        color: Colors.green,
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
