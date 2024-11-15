import 'package:flutter/material.dart';

class BillPaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bill Payments'),
      ),
      body: Center(
        child: Text('Welcome to the Bill Payment Page!', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
