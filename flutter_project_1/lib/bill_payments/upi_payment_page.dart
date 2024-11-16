import 'package:flutter/material.dart';

class UpiPaymentPage extends StatefulWidget {
  const UpiPaymentPage({super.key});

  @override
  State<UpiPaymentPage> createState() => _UpiPaymentPageState();
}

class _UpiPaymentPageState extends State<UpiPaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UPI Payment'),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text(
          'UPI Payment Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
