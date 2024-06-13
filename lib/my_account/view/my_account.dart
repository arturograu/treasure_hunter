import 'package:flutter/material.dart';
import 'package:treasure_hunter/l10n/l10n.dart';
import 'package:treasure_hunter/my_account/my_account.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({super.key});

  static Page<dynamic> page() => const MaterialPage<void>(child: MyAccount());

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.myAccountPageTitle),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: UserForm(),
      ),
    );
  }
}
