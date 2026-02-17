import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_app/models/product.dart';

//Used Set to avoid duplicates in the cart
class CartNotifier extends Notifier<Set<Product>> {

  //initial value
  @override
  Set<Product> build() {
    return const {};
  }

  void addProduct(Product product) {
    if (!state.contains(product)) {
      state = {...state, product};
    }
  }

  void removeProduct(Product product) {
    if (state.contains(product)) {
      state = state.where((p) => p.id != product.id).toSet();
    }
  }
}

final cartNotifierProvider = NotifierProvider<CartNotifier, Set<Product>>(CartNotifier.new);

final totalPriceProvider = Provider((ref) {
   final cartProducts = ref.watch(cartNotifierProvider);

   int totalPrice = 0;

   for (Product product in cartProducts) {
     totalPrice += product.price;
   }

   return totalPrice;
});