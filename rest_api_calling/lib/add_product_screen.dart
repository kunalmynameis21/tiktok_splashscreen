import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rest_api_calling/product_provider.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ProductProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Product"),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Description Field
              TextField(
                controller: provider.discreptionController,
                decoration: InputDecoration(
                  labelText: "Description",
                  labelStyle: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 16,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.deepPurple,
                      width: 3.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.deepPurple,
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.deepPurpleAccent,
                      width: 3.0,
                    ),
                  ),
                  hintText: "Enter product description...",
                  hintStyle: TextStyle(
                    color: Colors.grey[600],
                  ),
                  prefixIcon: const Icon(
                    Icons.description,
                    color: Colors.deepPurple,
                    size: 28,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                ),
                style: const TextStyle(fontSize: 16),
                maxLines: 3,
              ),

              const SizedBox(height: 24),

              // Image URL Field
              TextField(
                controller: provider.imageController,
                decoration: InputDecoration(
                  labelText: "Image URL",
                  labelStyle: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 16,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.deepPurple,
                      width: 3.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.deepPurple,
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.deepPurpleAccent,
                      width: 3.0,
                    ),
                  ),
                  hintText: "https://example.com/image.jpg",
                  hintStyle: TextStyle(
                    color: Colors.grey[600],
                  ),
                  prefixIcon: const Icon(
                    Icons.image,
                    color: Colors.deepPurple,
                    size: 28,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                ),
                style: const TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 24),

              // Price Field
              TextField(
                controller: provider.priceController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Price",
                  labelStyle: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 16,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.deepPurple,
                      width: 3.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.deepPurple,
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.deepPurpleAccent,
                      width: 3.0,
                    ),
                  ),
                  hintText: "\$99.99",
                  hintStyle: TextStyle(
                    color: Colors.grey[600],
                  ),
                  prefixIcon: const Icon(
                    Icons.attach_money,
                    color: Colors.deepPurple,
                    size: 28,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                ),
                style: const TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 24),

              // Categories Field
              TextField(
                controller: provider.categoriesController,
                decoration: InputDecoration(
                  labelText: "Categories",
                  labelStyle: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 16,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.deepPurple,
                      width: 3.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.deepPurple,
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.deepPurpleAccent,
                      width: 3.0,
                    ),
                  ),
                  hintText: "electronics, clothing, etc.",
                  hintStyle: TextStyle(
                    color: Colors.grey[600],
                  ),
                  prefixIcon: const Icon(
                    Icons.category,
                    color: Colors.deepPurple,
                    size: 28,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                ),
                style: const TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 32),

              ElevatedButton(
                onPressed: () {
                  provider.addProduct(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  "ADD PRODUCT",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}