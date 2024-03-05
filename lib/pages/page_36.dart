import 'package:flutter/material.dart';

class Page36 extends StatelessWidget {
  const Page36({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is Page 36"),
      ),
      body: Column(
        children: [
          Image.asset('assets/images/thankyou.jpg'),
        ],
      ),
    );
  }
}
