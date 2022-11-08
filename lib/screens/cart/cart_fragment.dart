import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class CartFragment extends StatefulWidget {
  const CartFragment({super.key});

  @override
  State<CartFragment> createState() => _CartFragmentState();
}

class _CartFragmentState extends State<CartFragment> {
    late AppLocalizations _local;
  @override
  void didChangeDependencies() {
    _local = AppLocalizations.of(context);
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_local.cart),centerTitle: true,),
      body: Center(child: Text(_local.cart)),
    );
  }
}