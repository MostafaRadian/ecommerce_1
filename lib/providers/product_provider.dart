import 'package:flutter/material.dart';
import 'package:holistic_ecommerce_app/models/product_model.dart';
import 'package:holistic_ecommerce_app/services/product_service.dart';

class ProductProvider extends ChangeNotifier {
  ProductModel? model;

  Future<void> getProduct() async {
    model = await ProductService.fetchData();
    notifyListeners();
  }
}
