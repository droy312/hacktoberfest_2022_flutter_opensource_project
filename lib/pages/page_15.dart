import 'package:flutter/material.dart';

// TODO: Beautify this page according to your imagination
class Page15 extends StatelessWidget {
  const Page15({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text('Page 15'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.deepPurple[600],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hola',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.15,
                  fontWeight: FontWeight.w200,
                  color: Colors.orange[600]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                '',
              ),
            ),
            const Text(
              'to page 15',
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.w200,
                fontSize: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}
