import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Add this package for currency formatting

class BillPaymentPage extends StatefulWidget {
  const BillPaymentPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BillPaymentPageState createState() => _BillPaymentPageState();
}

class _BillPaymentPageState extends State<BillPaymentPage> {
  final Map<String, double> sampleValues = {
    'Electricity': 100.0,
    'Water': 50.0,
    'Internet': 75.0,
    'Phone': 30.0,
    'Cable TV': 45.0,
  };

  double get totalBalance => sampleValues.values.reduce((a, b) => a + b);

  @override
  Widget build(BuildContext context) {
    final NumberFormat formatter =
        NumberFormat.currency(locale: 'en_IN', symbol: '₹');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0065FD),
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
            Column(
              children: sampleValues.entries.map((entry) {
                return BillCategoryTile(
                  icon: getCategoryIcon(entry.key),
                  label: entry.key,
                  amount: entry.value,
                  formatter: formatter,
                );
              }).toList(),
            ),
            const SizedBox(height: 32.0),
            Text(
              'Total Payment Balance: ${formatter.format(totalBalance)}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
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
                      horizontal: 40.0, vertical: 16.0),
                ),
                child: const Text('Pay Now'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  IconData getCategoryIcon(String category) {
    switch (category) {
      case 'Electricity':
        return Icons.electrical_services;
      case 'Water':
        return Icons.water;
      case 'Internet':
        return Icons.wifi;
      case 'Phone':
        return Icons.phone;
      case 'Cable TV':
        return Icons.tv;
      default:
        return Icons.category;
    }
  }
}

class BillCategoryTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final double amount;
  final NumberFormat formatter;

  const BillCategoryTile(
      {super.key,
      required this.icon,
      required this.label,
      required this.amount,
      required this.formatter});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 40),
      title: Text(label),
      trailing: Text(formatter.format(amount)),
      onTap: () {
        // Add navigation to specific bill payment page here if needed
      },
    );
  }
}
