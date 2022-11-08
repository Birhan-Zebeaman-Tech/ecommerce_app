import 'package:ecommerce_app/bloc/bloc.dart';
import 'package:ecommerce_app/screens/screens.dart';
import 'package:ecommerce_app/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: bottomNavRouteName,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
