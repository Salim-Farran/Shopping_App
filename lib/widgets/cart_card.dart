import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_app/extensions/navigation_extension.dart';
import 'package:shopping_app/providers/cart_notifier.dart';

class CartCard extends ConsumerWidget {
  const CartCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final numberOfProductsInCart = ref.watch(cartNotifierProvider).length;

    return Stack(
      children: [
        IconButton(
            onPressed: () {
              context.push(ScreenRoutes.cartScreen);
            },
            icon: const Icon(Icons.shopping_bag_outlined)
        ),
        Positioned(
            top: 6,
            left: 6,
            child: Container(
              padding: const EdgeInsets.all(1),
              width: 18,
              height: 18,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blueAccent,
              ),
              child: Text(
                numberOfProductsInCart.toString(),
                style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 11
                ),
              ),
            )
        )
      ],
    );
  }
}
