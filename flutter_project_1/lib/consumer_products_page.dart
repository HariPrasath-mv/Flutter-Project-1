import 'package:flutter/material.dart';

class ConsumerProductsPage extends StatelessWidget {
  const ConsumerProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0065FD),
        title: const Text('Consumer Products'),
      ),
      body: const Center(
        child: Text('This is Consumer Products Page!',
            style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
