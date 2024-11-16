import 'package:flutter/material.dart';
import 'bill_payments/bill_payment_page.dart'; // Import separate pages
import 'grocery_page.dart';
import 'consumer_service_page.dart';
import 'consumer_products_page.dart';
import 'food_order_page.dart';
import 'view_more_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Welcome, User!",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        leading: const Icon(Icons.arrow_back_ios, color: Colors.black),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://via.placeholder.com/150', // Replace with your image URL
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search here',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  height: 120, // Reduced height
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    title: Container(
                      margin:
                          const EdgeInsets.only(top: 8.0), // Adjusted margin
                      child: const Text(
                        'My Unit',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    subtitle: Container(
                      margin:
                          const EdgeInsets.only(top: 4.0), // Adjusted margin
                      child: const Text(
                        'My Community',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                children: [
                  buildMenuItem(context, Icons.payment, 'Bill Payments',
                      const BillPaymentPage()),
                  buildMenuItem(
                      context, Icons.shopping_cart, 'Grocery', GroceryPage()),
                  buildMenuItem(context, Icons.support, 'Consumer Service',
                      const ConsumerServicePage()),
                  buildMenuItem(context, Icons.category, 'Consumer Products',
                      const ConsumerProductsPage()),
                  buildMenuItem(context, Icons.restaurant, 'Dining',
                      FoodOrderPage()), // Placeholder
                  buildMenuItem(context, Icons.more_horiz, 'View More',
                      const ViewMorePage()), // Placeholder
                ],
              ),
            ),
          ),
          Container(
            color: Colors.red[50],
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: Row(
              children: [
                const Icon(Icons.warning, color: Colors.red),
                const SizedBox(width: 8),
                const Expanded(
                  child: Text(
                    'Important: Maintenance Schedule for Tomorrow!',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close, color: Colors.red),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildMenuItem(
      BuildContext context, IconData icon, String title, Widget page) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1), // Updated drop shadow
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 1), // Changes position of shadow
            ),
          ],
        ),
        padding: const EdgeInsets.all(12.0), // Reduced padding
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 30, color: Colors.blue), // Reduced icon size
            const SizedBox(height: 4),
            Text(title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14)), // Reduced text size
          ],
        ),
      ),
    );
  }
}
