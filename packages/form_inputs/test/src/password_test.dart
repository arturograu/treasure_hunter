import 'package:form_inputs/form_inputs.dart';
import 'package:test/test.dart';

void main() {
  const validPassword = 'a';

  group('Password', () {
    group('constructors', () {
      test('pure creates correct instance', () {
        const password = Password.pure();
        expect(password.value, '');
        expect(password.isPure, true);
      });

      test('dirty creates correct instance', () {
        const password = Password.dirty(validPassword);
        expect(password.value, validPassword);
        expect(password.isPure, false);
      });
    });

    group('validator', () {
      test('returns invalid error when password is empty', () {
        expect(
          const Password.dirty().error,
          PasswordValidationError.invalid,
        );
      });

      test('is valid when password is valid', () {
        expect(
          const Password.dirty(validPassword).error,
          isNull,
        );
      });
    });
  });
}
