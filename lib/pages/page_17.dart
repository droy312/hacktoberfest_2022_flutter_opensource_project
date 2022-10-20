import 'package:flutter/material.dart';

// TODO: Beautify this page according to your imagination
class Page17 extends StatelessWidget{
  const Page17({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text('Page 17'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.deepPurple[600],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.15,
                  fontWeight: FontWeight.w200,
                  color: Colors.blue[600]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                'https://images.unsplash.com/photo-1472120435266-53107fd0c44a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
              ),
            ),
            const Text(
              'page 17',
              style: TextStyle(
                color: Colors.brown,
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}
