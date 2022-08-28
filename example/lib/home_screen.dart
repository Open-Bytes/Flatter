import 'package:flutter/material.dart';

import 'cart_screen_flat.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flatter'),
      ),
      body: const CartScreenFlat(),
    );
  }
}
