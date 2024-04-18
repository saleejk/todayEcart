import 'package:flutter/material.dart';
import 'package:flutter_mechine/model/product_model.dart';

ValueNotifier<List<ProductModel>> productListNotifier = ValueNotifier([]);
void addProduct(ProductModel val) async {
  productListNotifier.value.add(val);
  productListNotifier.notifyListeners();
}
