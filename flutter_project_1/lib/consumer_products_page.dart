import 'package:flutter/material.dart';

class ConsumerProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consumer Products'),
      ),
      body: const Center(
        child: Text('This is Consumer Products Page!',
            style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
