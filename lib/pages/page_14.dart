import 'package:flutter/material.dart';
// TODO: Beautify this page according to your imagination
class Page14 extends StatelessWidget {
  const Page14({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text('Page 14'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.deepPurple[600],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bonjour',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.15,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[600]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                'https://images.unsplash.com/photo-1527842891421-42eec6e703ea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
              ),
            ),
            const Text(
              'to page 14',
              style: TextStyle(
                color: Colors.blue,
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
