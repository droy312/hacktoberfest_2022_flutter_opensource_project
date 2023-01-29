import 'package:flutter/material.dart';

// TODO: Beautify this page according to your imagination
class Page23 extends StatelessWidget {
  const Page23({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Page 23')),
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        title: const Text('Page 23'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.red[600],
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
                  color: Colors.red[600]),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1426604966848-d7adac402bff?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                  ),
                ),
                const Positioned(
                  bottom: 30,
                  right: 90,
                  child: Text(
                    'To Page 23',
                    style: TextStyle(
                        color: Colors.red,
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
