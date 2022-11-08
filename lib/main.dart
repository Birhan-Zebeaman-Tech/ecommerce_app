import 'package:ecommerce_app/bloc/locale/locale_cubit.dart';
import 'package:ecommerce_app/screens/screens.dart';
import 'package:ecommerce_app/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocaleCubit(),
      child: BlocBuilder<LocaleCubit, LocaleState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            initialRoute: bottomNavRouteName,
            onGenerateRoute: AppRoutes.generateRoute,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            locale: state.locale,
          );
        },
      ),
    );
  }
}
