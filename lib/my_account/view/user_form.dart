import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class UserForm extends StatelessWidget {
  const UserForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppTextField(
          key: Key('myAccountForm_nameInput_textField'),
          label: 'Email',
          hintText: 'John',
        ),
        const SizedBox(height: 8),
        const AppEmailTextField(
          key: Key('myAccountForm_emailInput_textField'),
          label: 'Email',
          hintText: 'john.doe@gmail.com',
        ),
        const Spacer(),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            key: const Key('myAccountForm_submitButton'),
            onPressed: () {
              print('Save button pressed');
            },
            child: const Text('Save'),
          ),
        ),
      ],
    );
  }
}
