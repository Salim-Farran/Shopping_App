import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_app/providers/cart_notifier.dart';
import 'package:shopping_app/providers/products_provider.dart';

class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({super.key});

  @override
  ConsumerState<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final cartProducts = ref.watch(cartNotifierProvider);
    final totalPrice = ref.watch(totalPriceProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: [
            Column(
              children: cartProducts.map((product) {
                return Card.filled(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset(product.image, width: 50, height: 50,),
                        const SizedBox(width: 10),
                        Text(product.title),
                        Spacer(),
                        Text('£ ${product.price}')
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
            Text('Total price - £ $totalPrice'),
          ],
        ),
      ),
    );
  }
}
