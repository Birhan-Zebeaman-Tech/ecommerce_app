import 'package:ecommerce_app/bloc/locale/locale_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AccountFragment extends StatefulWidget {
  const AccountFragment({super.key});

  @override
  State<AccountFragment> createState() => _AccountFragmentState();
}

class _AccountFragmentState extends State<AccountFragment> {
  late AppLocalizations _local;
  @override
  void didChangeDependencies() {
    _local = AppLocalizations.of(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_local.account),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(_local.account),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            child: const Text('change Language to amharic'),
            onPressed: () {
              BlocProvider.of<LocaleCubit>(context)
                  .changeLanguage(const Locale('am', 'ET'));
            },
          )
        ],
      )),
    );
  }
}
