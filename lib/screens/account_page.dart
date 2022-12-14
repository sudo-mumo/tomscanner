import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: Text(
        'Account Page',
      ),
    );
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
