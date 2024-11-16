import 'package:flutter/material.dart';

class WalletPaymentPage extends StatefulWidget {
  const WalletPaymentPage({super.key});

  @override
  State<WalletPaymentPage> createState() => _WalletPaymentPageState();
}

class _WalletPaymentPageState extends State<WalletPaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wallet Payment'),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text(
          'Wallet Payment Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
