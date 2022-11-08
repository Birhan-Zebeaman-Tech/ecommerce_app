import 'package:flutter/material.dart';
class AccountFragment extends StatefulWidget {
  const AccountFragment({super.key});

  @override
  State<AccountFragment> createState() => _AccountFragmentState();
}

class _AccountFragmentState extends State<AccountFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Account'),centerTitle: true,),
      body: const Center(child: Text('Account')),
    );
  }
}