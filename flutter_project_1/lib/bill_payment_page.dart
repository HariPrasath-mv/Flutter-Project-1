import 'package:flutter/material.dart';

class BillPaymentPage extends StatelessWidget {
  const BillPaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bill Payments'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select a Category',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            const BillCategoryTile(
                icon: Icons.electrical_services, label: 'Electricity'),
            const BillCategoryTile(icon: Icons.water, label: 'Water'),
            const BillCategoryTile(icon: Icons.wifi, label: 'Internet'),
            const BillCategoryTile(icon: Icons.phone, label: 'Phone'),
            const BillCategoryTile(icon: Icons.tv, label: 'Cable TV'),
            const SizedBox(height: 32.0),
            const Text(
              'Payment Details',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Account Number',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Amount',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 32.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Add payment logic here
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 70.0, vertical: 18.0),
                ),
                child: const Text('Pay Now'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BillCategoryTile extends StatelessWidget {
  final IconData icon;
  final String label;

  const BillCategoryTile({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 40),
      title: Text(label),
      onTap: () {
        // Add navigation to specific bill payment page here if needed
      },
    );
  }
}
