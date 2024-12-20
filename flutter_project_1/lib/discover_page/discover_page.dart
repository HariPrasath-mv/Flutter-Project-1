import 'package:flutter/material.dart';
import 'add_item_page.dart'; // Import the Add Item Page.

class DiscoverPage extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {'name': 'Properties', 'icon': Icons.home},
    {'name': 'Electronics', 'icon': Icons.tv},
    {'name': 'Furniture', 'icon': Icons.chair},
    {'name': 'Vehicles', 'icon': Icons.directions_car},
  ];

  final List<Map<String, dynamic>> listings = [
    {
      'title': 'Sony OLED Smart TV - 55 inch',
      'price': '₹6000',
      'status': 'SALE',
      'location': 'Sharlow Apartments, Bangalore',
      'image': 'assets/images/discover/sony_tv.png',
    },
    {
      'title': '7" Medical Mattress',
      'price': '₹2000',
      'status': 'SALE',
      'location': 'Sharlow Apartments, Bangalore',
      'image': 'assets/images/discover/mattress.png',
    },
    {
      'title': 'Comic Books',
      'price': 'Free',
      'status': 'FREE',
      'location': 'Sharlow Apartments, Bangalore',
      'image': 'assets/images/discover/comic_books.png',
    },
  ];

  DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Discover',
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
        backgroundColor: const Color(0xFF0065FD),
      ),
      body: Column(
        children: [
          // Search and My Listings
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8.0),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to user's listings (functionality can be added later)
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text('My Listings'),
                ),
              ],
            ),
          ),
          // Categories Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Browse by Categories',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 8.0),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                return _buildCategoryCard(category);
              },
            ),
          ),
          // Listings Section
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              'Listings from My Community',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: listings.length,
              itemBuilder: (context, index) {
                final listing = listings[index];
                return _buildListingCard(listing);
              },
            ),
          ),
        ],
      ),
      // Floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddItemPage()),
          );
        },
        backgroundColor: const Color(0xFF0065FD),
        child: Icon(Icons.add),
      ),
    );
  }

  // Category Card
  Widget _buildCategoryCard(Map<String, dynamic> category) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundColor: const Color(0xFF73A8F7),
            child: Icon(category['icon'],
                color: const Color(0xFFFFFFFF), size: 30.0),
          ),
          SizedBox(height: 8.0),
          Text(category['name'], style: TextStyle(fontSize: 14.0)),
        ],
      ),
    );
  }

  // Listing Card
  Widget _buildListingCard(Map<String, dynamic> listing) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: ListTile(
        leading: Image.asset(listing['image'], width: 50.0, fit: BoxFit.cover),
        title: Text(listing['title'],
            style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(listing['price']),
            Text(listing['location'],
                style: TextStyle(color: Colors.grey[600])),
          ],
        ),
        trailing: Chip(
          label: Text(listing['status']),
          backgroundColor:
              listing['status'] == 'FREE' ? Colors.green[100] : Colors.red[100],
        ),
      ),
    );
  }
}
