import 'package:flutter/material.dart';

class GroceryPage extends StatelessWidget {
  const GroceryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grocery'),
      ),
      body: const Center(
        child: Text('Welcome to the Grocery Page!', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
