import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:treasure_hunter/app/cubit/app_cubit.dart';
import 'package:treasure_hunter/my_account/cubit/my_account_cubit.dart';

class UserForm extends StatelessWidget {
  const UserForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<MyAccountCubit, MyAccountState>(
      listener: (context, state) {
        ///
      },
      child: const Column(
        children: [
          _EmailInput(),
          SizedBox(height: 22),
          _NameInput(),
          Spacer(),
          _SubmitButton(),
        ],
      ),
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
        final appState = context.read<AppCubit>().state;
        return AppEmailTextField(
          label: 'Email',
          readOnly: state.status.isInProgress,
          initialValue: appState.user.email,
          errorText: state.email.isNotValid ? 'invalid email' : null,
          onChanged: (value) =>
              context.read<MyAccountCubit>().emailChanged(value),
        );
      },
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
        final appState = context.read<AppCubit>().state;
        return AppTextField(
          label: 'Name',
          initialValue: appState.user.name,
          readOnly: state.status.isInProgress,
          errorText: state.name.isNotValid ? 'invalid name' : null,
          onChanged: (value) =>
              context.read<MyAccountCubit>().nameChanged(value),
        );
      },
    );
  }
}

class _SubmitButton extends StatelessWidget {
  const _SubmitButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyAccountCubit, MyAccountState>(
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: state.isValid ? () => print('save') : null,
            child: state.status.isInProgress
                ? const AppButtonCircularProgressIndicator()
                : const Text('Save'),
          ),
        );
      },
    );
  }
}
