import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_app/providers/cart_notifier.dart';
import 'package:shopping_app/providers/products_provider.dart';

import '../widgets/cart_card.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allProducts = ref.watch(productsProvider);
    final cartProducts = ref.watch(cartNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Garage Sale Products'),
        actions: const [CartCard()],
        centerTitle: false,
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.9
              ),
              itemCount: allProducts.length,
              itemBuilder: (context, index) {
                return  Card(
                  elevation: 6,
                  surfaceTintColor: Color(0xFFFDFDFB),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(allProducts[index].image, width: 60, height: 60,),
                        Text(allProducts[index].title),
                        Text('£${allProducts[index].price}'),
                        Spacer(),

                        if (!cartProducts.contains(allProducts[index]))
                          Align(
                            alignment: AlignmentGeometry.centerEnd,
                            child: IconButton(
                                onPressed: () {
                                  ref.read(cartNotifierProvider.notifier)
                                      .addProduct(allProducts[index]);
                                },
                                icon: Icon(Icons.add_shopping_cart, color: Colors.blue,)
                            ),
                          ),

                        if (cartProducts.contains(allProducts[index]))
                          Align(
                            alignment: AlignmentGeometry.centerEnd,
                            child: IconButton(onPressed: () {
                              ref.read(cartNotifierProvider.notifier)
                                  .removeProduct(allProducts[index]);
                            },
                            icon: Icon(Icons.remove_shopping_cart, color: Colors.red,)
                            ),
                          ),
                      ],
                    ),
                  ),
                );
              }
          ),
      ),
    );
  }
}
