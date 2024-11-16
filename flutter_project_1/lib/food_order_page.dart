import 'package:flutter/material.dart';

class FoodOrderPage extends StatelessWidget {
  final List<Category> popularRestaurants = [
    Category('Pizza Palace', Icons.local_pizza),
    Category('Burger House', Icons.fastfood),
    Category('Sushi Central', Icons.ramen_dining),
    Category('Indian Spice', Icons.restaurant_menu),
    Category('Vegan Delight', Icons.eco),
    Category('Dessert Haven', Icons.icecream),
  ];

  final List<Category> foodCategories = [
    Category('Chinese', Icons.rice_bowl),
    Category('Italian', Icons.local_pizza),
    Category('Indian', Icons.restaurant),
    Category('Mexican', Icons.local_cafe),
    Category('Desserts', Icons.cake),
    Category('Drinks', Icons.local_drink),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0065FD), // Updated AppBar color
        title: const Text('Food Orders'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Nearby Restaurants',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(16.0),
              children: popularRestaurants.map((category) {
                return CategoryTile(category: category);
              }).toList(),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Food Categories',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(16.0),
              children: foodCategories.map((category) {
                return CategoryTile(category: category);
              }).toList(),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  'FREE DELIVERY on orders above ₹49',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Category {
  final String name;
  final IconData icon;

  Category(this.name, this.icon);
}

class CategoryTile extends StatelessWidget {
  final Category category;

  const CategoryTile({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          // Add navigation or action here
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(category.icon,
                  size: 40, color: Colors.black), // Icon color set to black
              const SizedBox(height: 8.0),
              Text(
                category.name,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
