import 'package:flutter/material.dart';
import 'bill_payment_page.dart';
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
        backgroundColor: const Color(0xFF0065FD), // Updated AppBar color
        title: const Text('ACE'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://example.com/profile.jpg'), // Replace with your profile image URL or asset
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                  vertical: 16.0, horizontal: 16.0), // Added margin
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 179, 212, 255),
                borderRadius:
                    BorderRadius.circular(15.0), // Added border radius
              ),
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              child: const Column(
                children: [
                  Text('My Unit', style: TextStyle(fontSize: 18)),
                  SizedBox(height: 8.0),
                  Text('My Community', style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Our Services', style: TextStyle(fontSize: 18)),
                  const SizedBox(height: 16.0),
                  GridView.count(
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      ServiceTile(
                        icon: Icons.payment,
                        label: 'Bill Payments',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BillPaymentPage()),
                          );
                        },
                      ),
                      ServiceTile(
                        icon: Icons.shopping_cart,
                        label: 'Grocery',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GroceryPage()),
                          );
                        },
                      ),
                      ServiceTile(
                        icon: Icons.build,
                        label: 'Consumer Service',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ConsumerServicePage()),
                          );
                        },
                      ),
                      ServiceTile(
                        icon: Icons.card_giftcard,
                        label: 'Consumer Products',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ConsumerProductsPage()),
                          );
                        },
                      ),
                      ServiceTile(
                        icon: Icons.restaurant,
                        label: 'Food Order',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FoodOrderPage()),
                          );
                        },
                      ),
                      ServiceTile(
                        icon: Icons.more_horiz,
                        label: 'View More',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ViewMorePage()),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                  vertical: 16.0, horizontal: 16.0), // Added margin
              decoration: BoxDecoration(
                color: Colors.yellow[100],
                borderRadius:
                    BorderRadius.circular(12.0), // Added border radius
              ),
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('News', style: TextStyle(fontSize: 18)),
                  const SizedBox(height: 8.0),
                  const Text('Important: Maintenance Scheduled for Tomorrow!'),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Read More'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onTap;

  const ServiceTile(
      {super.key, required this.icon, required this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40),
            const SizedBox(height: 8.0),
            Text(label, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
