import 'package:ecommerce_app/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ecommerce_app/config/config.dart';
import 'package:ecommerce_app/screens/screens.dart';

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case bottomNavRouteName:
        return MaterialPageRoute(
            builder: (context) => BlocProvider<BottomNavCubit>(
                  create: (context) => BottomNavCubit(),
                  child: const BottomNav(),
                ));
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
            centerTitle: true,
          ),
              body: const Center(child: Text('error')),
            ));
  }
}
