import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class BrandFragment extends StatefulWidget {
  const BrandFragment({super.key});

  @override
  State<BrandFragment> createState() => _BrandFragmentState();
}

class _BrandFragmentState extends State<BrandFragment> {
    late AppLocalizations _local;
  @override
  void didChangeDependencies() {
    _local = AppLocalizations.of(context);
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_local.brand),centerTitle: true,),
      body: Center(child: Text(_local.brand)),
    );
  }
}