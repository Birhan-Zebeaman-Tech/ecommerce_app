import 'package:flutter/material.dart';
class BrandFragment extends StatefulWidget {
  const BrandFragment({super.key});

  @override
  State<BrandFragment> createState() => _BrandFragmentState();
}

class _BrandFragmentState extends State<BrandFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Brand'),centerTitle: true,),
      body: const Center(child: Text('Brand')),
    );
  }
}