import 'package:form_inputs/form_inputs.dart';
import 'package:test/test.dart';

void main() {
  const validPassword = 'Abcdef#1';
  const lessThan8CharactersPassword = 'Abcde#1';
  const noContainingNumberPassword = 'Abcdefg#';
  const noContainingSpecialCharacterPassword = 'Abcdefg1';
  const noContainingUppercasePassword = 'abcdef#1';
  const noContainingLowercasePassword = 'ABCDEF#1';

  group('NewPassword', () {
    group('constructors', () {
      test('pure creates correct instance', () {
        const password = NewPassword.pure();
        expect(password.value, '');
        expect(password.isPure, true);
      });

      test('dirty creates correct instance', () {
        const password = NewPassword.dirty(validPassword);
        expect(password.value, validPassword);
        expect(password.isPure, false);
      });
    });

    group('validator', () {
      test('returns nullPassword error when password is empty', () {
        expect(
          const NewPassword.dirty().error,
          NewPasswordValidationError.all,
        );
      });

      test(
          'returns lessThan8Characters error when '
          'password is less than 8 characters', () {
        expect(
          const NewPassword.dirty(lessThan8CharactersPassword).error,
          [NewPasswordValidationError.lessThan8Characters],
        );
      });

      test(
          'returns noUppercaseLetter error when '
          'password does not contain an uppercase letter', () {
        expect(
          const NewPassword.dirty(noContainingUppercasePassword).error,
          [NewPasswordValidationError.noUppercaseLetter],
        );
      });

      test(
          'returns noLowercaseLetter error when '
          'password does not contain a lowercase letter', () {
        expect(
          const NewPassword.dirty(noContainingLowercasePassword).error,
          [NewPasswordValidationError.noLowercaseLetter],
        );
      });

      test(
          'returns noNumber error when '
          'password does not contain a number', () {
        expect(
          const NewPassword.dirty(noContainingNumberPassword).error,
          [NewPasswordValidationError.noNumber],
        );
      });

      test(
          'returns noSpecialCharacter error when '
          'password does not contain a special character', () {
        expect(
          const NewPassword.dirty(noContainingSpecialCharacterPassword).error,
          [NewPasswordValidationError.noSpecialCharacter],
        );
      });

      test('is valid when password is valid', () {
        expect(
          const NewPassword.dirty(validPassword).error,
          isNull,
        );
      });
    });
  });
}
