import 'package:flutter/material.dart';

class ViewMorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View More'),
      ),
      body: const Center(
        child: Text('Welcome to the View More Page!', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
