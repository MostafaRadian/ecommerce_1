import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final String image;
  final dynamic price;
  final String name;
  final String description;
  const ProductDetails({
    super.key,
    required this.image,
    required this.name,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Product Details",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.pinkAccent,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(image),
              const SizedBox(
                height: 20,
              ),
              Text(name),
              const SizedBox(
                height: 20,
              ),
              Text(description),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Price: \$$price",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.pinkAccent,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
