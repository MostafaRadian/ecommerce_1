import 'package:flutter/material.dart';
import 'package:holistic_ecommerce_app/providers/product_provider.dart';
import 'package:holistic_ecommerce_app/widgets/product_item.dart';
import 'package:provider/provider.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Products Page",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.pinkAccent,
            ),
          ),
          centerTitle: true,
        ),
        body: Consumer<ProductProvider>(
          builder:
              (BuildContext context, ProductProvider value, Widget? child) {
            var products = value.model?.products;
            if (products == null) {
              value.getProduct();
              return const Center(child: CircularProgressIndicator());
            } else {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // 3 items per row
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 0.75),
                itemCount: products.length,
                itemBuilder: (context, index) => ProductItem(
                  image: products[index]['image'],
                  name: products[index]['name'],
                  description: products[index]['description'],
                  price: products[index]['price'],
                ),
              );
            }
          },
        ));
  }
}
