import 'package:flutter/material.dart';

class FoodOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Order'),
      ),
      body: const Center(
        child: Text('Welcome to the Food Order Page!', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
