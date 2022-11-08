import 'package:flutter/material.dart';
class CartFragment extends StatefulWidget {
  const CartFragment({super.key});

  @override
  State<CartFragment> createState() => _CartFragmentState();
}

class _CartFragmentState extends State<CartFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cart'),centerTitle: true,),
      body: const Center(child: Text('Cart')),
    );
  }
}