import 'package:flutter/material.dart';

import '../widgets/cart_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Garage Sale Products'),
        actions: const [CartCard()],
      ),
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.9
              ),
              itemCount: 8,
              itemBuilder: (context, index) {
                return  Card(
                  elevation: 6,
                  surfaceTintColor: Colors.red,
                  child: Text('item'),
                );
              }
          ),
      ),
    );
  }
}
