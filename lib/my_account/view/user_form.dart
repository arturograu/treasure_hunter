import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:treasure_hunter/my_account/my_account.dart';

class UserForm extends StatelessWidget {
  const UserForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        _NameInput(),
        SizedBox(height: 8),
        _EmailInput(),
        SizedBox(height: 8),
        //_SaveButton(),
      ],
    );
  }
}

class _NameInput extends StatelessWidget {
  const _NameInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyAccountCubit, MyAccountState>(
      buildWhen: (previous, current) => previous.name != current.name,
      builder: (context, state) {
        return AppTextField(
          key: const Key('myAccountForm_nameInput_textField'),
          label: 'Email',
          hintText: 'John',
          readOnly: state.status.isInProgress,
          onChanged: (companyName) => context.read<MyAccountCubit>(),
        );
      },
    );
  }
}

class _EmailInput extends StatelessWidget {
  const _EmailInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyAccountCubit, MyAccountState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return AppEmailTextField(
          key: const Key('myAccountForm_emailInput_textField'),
          label: 'Email',
          hintText: 'john.doe@gmail.com',
          readOnly: state.status.isInProgress,
          onChanged: (value) =>
              context.read<MyAccountCubit>().onEmailChanged(value),
        );
      },
    );
  }
}
