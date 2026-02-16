import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_app/models/product.dart';

const List<Product> allProducts = [
  Product(id: '1',
      title: 'Groovy shorts',
      price: 12,
      image: 'assets/shorts.png'
  ),
  Product(id: '2',
      title: 'Drum',
      price: 55,
      image: 'assets/drum.png'
  ),
  Product(id: '3',
      title: 'Back pack',
      price: 29,
      image: 'assets/backpack.png'
  ),
  Product(id: '4',
      title: 'Electric Guitar',
      price: 35,
      image: 'assets/guitar.png'
  ),
  Product(id: '5',
      title: 'Jeans',
      price: 47,
      image: 'assets/jeans.png'
  ),
  Product(id: '6',
      title: 'Karati',
      price: 67,
      image: 'assets/karati.png'
  ),
  Product(id: '7',
      title: 'Skates',
      price: 34,
      image: 'assets/skates.png'
  ),
  Product(id: '8',
      title: 'Suit case',
      price: 25,
      image: 'assets/suitcase.png'
  ),
];

final productsProvider = Provider((ref) {
  return allProducts;
});

final reducedProductsProvider = Provider((ref) {
  return allProducts.where((p) => p.price < 50).toList();
});