import 'package:flutter/foundation.dart';
import '../models/product_model.dart';

class CartService {
  CartService._();
  static final CartService instance = CartService._();

  final ValueNotifier<List<ProductModel>> items = ValueNotifier([]);

  void add(ProductModel product) {
    final current = List<ProductModel>.from(items.value);
    current.add(product);
    items.value = current;
  }

  void remove(int index) {
    final current = List<ProductModel>.from(items.value);
    current.removeAt(index);
    items.value = current;
  }

  void clear() {
    items.value = [];
  }

  int get count => items.value.length;

  double get total => items.value.fold(0, (sum, p) => sum + p.price);
}
