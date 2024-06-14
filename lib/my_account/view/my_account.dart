import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:treasure_hunter/app/cubit/app_cubit.dart';
import 'package:treasure_hunter/l10n/l10n.dart';
import 'package:treasure_hunter/my_account/cubit/my_account_cubit.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocProvider(
          create: (_) => MyAccountCubit(
            user: context.read<AppCubit>().state.user,
          ),
          child: const UserForm(),
        ),
      ),
    );
  }
}
