import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_app/models/product.dart';

const List<Product> allProducts = [
  Product(id: '1',
      title: 'Groovy shorts',
      price: 12,
      image: ''
  ),
  Product(id: '1',
      title: 'Groovy shorts',
      price: 55,
      image: ''
  ),
  Product(id: '1',
      title: 'Groovy shorts',
      price: 12,
      image: ''
  ),
  Product(id: '1',
      title: 'Groovy shorts',
      price: 12,
      image: ''
  ),
  Product(id: '1',
      title: 'Groovy shorts',
      price: 12,
      image: ''
  ),
  Product(id: '1',
      title: 'Groovy shorts',
      price: 12,
      image: ''
  ),
];

final productsProvide = Provider((ref) {
  return allProducts;
});

final reducedProductsProvider = Provider((ref) {
  return allProducts.where((p) => p.price < 50).toList();
});