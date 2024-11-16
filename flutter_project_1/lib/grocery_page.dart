import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class GroceryPage extends StatelessWidget {
  final List<Category> groceryCategories = [
    Category('Fresh Vegetables', Icons.local_florist),
    Category('Fresh Fruits', Icons.local_offer),
    Category('Dairy, Bread and Eggs', Icons.local_dining),
    Category('Cereals and Breakfast', Icons.local_cafe),
    Category('Atta, Rice and Dals', Icons.local_mall),
    Category('Oils and Ghee', Icons.local_grocery_store),
    Category('Masalas and Dry Fruits', Icons.local_bar),
    Category('Bakery', Icons.bakery_dining),
    Category('Biscuits and Cakes', Icons.cake),
    Category('Tea, Coffee and More', Icons.local_drink),
    Category('Kitchen and Dining', Icons.kitchen),
    Category('Meat and Seafood', Icons.restaurant),
  ];

  final List<Category> snacksCategories = [
    Category('Chips and Namkeen', Icons.fastfood),
    Category('Ice Creams and Desserts', Icons.icecream),
    Category('Sweets and Chocolates', Icons.local_cafe),
    Category('Juices and Soft Drinks', Icons.local_drink),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0065FD),
        title: const Text('Grocery'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Grocery & Kitchen',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(16.0),
              children: groceryCategories.map((category) {
                return CategoryTile(category: category);
              }).toList(),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Snacks & Drinks',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(16.0),
              children: snacksCategories.map((category) {
                return CategoryTile(category: category);
              }).toList(),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  'FREE DELIVERY on orders above ₹49',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green),
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
              Icon(category.icon, size: 40, color: Colors.black),
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
