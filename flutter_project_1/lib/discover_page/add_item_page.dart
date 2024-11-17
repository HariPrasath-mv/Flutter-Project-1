import 'package:flutter/material.dart';

class AddItemPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  AddItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Item', style: TextStyle(color: Color(0xFFFFFFFF))),
        backgroundColor: const Color(0xFF0065FD),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // Image Upload Button
              ElevatedButton.icon(
                onPressed: () {
                  // Handle image upload
                },
                icon: Icon(Icons.upload_file),
                label: Text('Upload Image'),
              ),
              SizedBox(height: 16.0),
              // Category Dropdown
              DropdownButtonFormField(
                items: ['Properties', 'Electronics', 'Furniture', 'Vehicles']
                    .map((category) => DropdownMenuItem(
                          value: category,
                          child: Text(category),
                        ))
                    .toList(),
                onChanged: (value) {},
                decoration: InputDecoration(
                  labelText: 'Category',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              // Product Name
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Product Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              // Price
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Expected Price',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 16.0),
              // Submit Button
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Handle form submission
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
