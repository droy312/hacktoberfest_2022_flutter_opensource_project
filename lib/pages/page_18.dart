import 'package:flutter/material.dart';
// TODO: Beautify this page according to your imagination
class Page18 extends StatelessWidget {
  const Page18({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Page 18')),
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text('Page 18'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.deepPurple[600],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Konnichiwa',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.15,
                  fontWeight: FontWeight.light,
                  color: Colors.pink[600]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                '',
              ),
            ),
            const Text(
              'page 18',
              style: TextStyle(
                color: Colors.aqua,
                fontWeight: FontWeight.light,
                fontSize: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}
