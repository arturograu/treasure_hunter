// ignore_for_file: prefer_const_constructors

import 'package:form_inputs/form_inputs.dart';
import 'package:test/test.dart';

void main() {
  const validPhoneNumber = '1234567890';

  group('PhoneNumber', () {
    group('constructors', () {
      test('pure creates correct instance', () {
        const phoneNumber = PhoneNumber.pure();
        expect(phoneNumber.value, 'null');
        expect(phoneNumber.isPure, true);
      });

      test('dirty creates correct instance', () {
        final phoneNumber = PhoneNumber.dirty(validPhoneNumber);
        expect(phoneNumber.value, validPhoneNumber);
        expect(phoneNumber.isPure, false);
      });
    });

    group('validator', () {
      test('returns invalid error when phone number is empty', () {
        expect(
          const PhoneNumber.dirty().error,
          PhoneNumberValidationError.invalid,
        );
      });

      test('is valid when phone number is valid', () {
        expect(PhoneNumber.dirty(validPhoneNumber).error, isNull);
      });
    });
  });
}
