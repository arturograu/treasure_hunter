// ignore_for_file: prefer_const_constructors

import 'package:form_inputs/form_inputs.dart';
import 'package:test/test.dart';

void main() {
  group('ConfirmedPassword', () {
    group('constructors', () {
      test('pure creates correct instance', () {
        const confirmedPassword = ConfirmedPassword.pure();
        expect(confirmedPassword.value, '');
        expect(confirmedPassword.newPassword, '');
        expect(confirmedPassword.isPure, true);
      });

      test('dirty creates correct instance', () {
        const confirmedPassword =
            ConfirmedPassword.dirty(newPassword: 'Abcdef#1');
        expect(confirmedPassword.newPassword, 'Abcdef#1');
        expect(confirmedPassword.value, '');
        expect(confirmedPassword.isPure, false);
      });
    });

    group('validator', () {
      test('returns nullPassword when value is empty', () {
        expect(
          ConfirmedPassword.dirty(newPassword: 'ab').error,
          ConfirmedPasswordValidationError.nullPassword,
        );
      });

      test('returns mismatch when passwords do not match', () {
        expect(
          ConfirmedPassword.dirty(newPassword: 'Abcdef#1', value: 'Abcdef#2')
              .error,
          ConfirmedPasswordValidationError.mismatch,
        );
      });

      test('is valid when passwords match', () {
        expect(
          ConfirmedPassword.dirty(newPassword: 'Abcdef#1', value: 'Abcdef#1')
              .error,
          null,
        );
      });
    });
  });
}
