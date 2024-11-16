import 'package:flutter/material.dart';

class ConsumerServicePage extends StatelessWidget {
  const ConsumerServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0065FD),
        title: const Text('Consumer Service'),
      ),
      body: const Center(
        child: Text('This is Consumer Service Page!', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
