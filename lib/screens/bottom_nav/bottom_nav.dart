import 'package:ecommerce_app/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ecommerce_app/screens/screens.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, BottomNavState>(
          builder: (context, state) {
        return Scaffold(
          body: callPage(state.bottomNavIndex),
          bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shop_outlined), label: 'Brand'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outlined), label: 'Account'),
          ],
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.grey,
          onTap: (value) {
            BlocProvider.of<BottomNavCubit>(context).setBottomNavIndex(value);
          },
          currentIndex: state.bottomNavIndex,
        ),
        );
      });
  }

  Widget callPage(int indexValue) {
    switch (indexValue) {
      case 0:
        return const HomeFragment();
      case 1:
        return const BrandFragment();
      case 2:
        return const CartFragment();
      case 3:
        return const AccountFragment();
      default:
        return const HomeFragment();
    }
  }
}
