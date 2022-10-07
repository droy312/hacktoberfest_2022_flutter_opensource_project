import 'package:flutter/material.dart';

// TODO: Beautify this page according to your imagination
class Page12 extends StatelessWidget {
  const Page12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text('Page 12'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.deepPurple[600],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello!!',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.15,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple[600]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                'https://images.unsplash.com/photo-1595853035070-59a39fe84de3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1025&q=80',
              ),
            ),
            const Text(
              'to page 12',
              style: TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            )
          ],
        ),
      ),
    );
  }
}
