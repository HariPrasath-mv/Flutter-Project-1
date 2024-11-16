import 'package:flutter/material.dart';

class ViewMorePage extends StatelessWidget {
  const ViewMorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0065FD),
        title: const Text('View More'),
      ),
      body: const Center(
        child: Text('Welcome to the View More Page!', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
