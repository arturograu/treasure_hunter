import 'package:form_inputs/form_inputs.dart';
import 'package:test/test.dart';

void main() {
  const validZipCode = '12345';
  const invalidZipCode = 'ABC123';
  const zipCodeWithMoreThanFiveDigits = '123456';
  const zipCodeWithLessThanFiveDigits = '1234';

  group('ZipCode', () {
    group('constructors', () {
      test('pure creates correct instance', () {
        const zipCode = ZipCode.pure();
        expect(zipCode.value, '');
        expect(zipCode.isPure, true);
      });

      test('dirty creates correct instance', () {
        const zipCode = ZipCode.dirty(validZipCode);
        expect(zipCode.value, validZipCode);
        expect(zipCode.isPure, false);
      });
    });

    group('validator', () {
      test('returns invalid error when zip code is empty', () {
        expect(
          const ZipCode.dirty().error,
          ZipCodeValidationError.invalid,
        );
      });

      test('returns invalid error when zip code is not in the correct format',
          () {
        expect(
          const ZipCode.dirty(invalidZipCode).error,
          ZipCodeValidationError.invalid,
        );
      });

      test('returns invalid error when zip code has more than five digits', () {
        expect(
          const ZipCode.dirty(zipCodeWithMoreThanFiveDigits).error,
          ZipCodeValidationError.invalid,
        );
      });

      test('returns invalid error when zip code has less than five digits', () {
        expect(
          const ZipCode.dirty(zipCodeWithLessThanFiveDigits).error,
          ZipCodeValidationError.invalid,
        );
      });

      test('is valid when zip code is in the correct format', () {
        expect(
          const ZipCode.dirty(validZipCode).error,
          isNull,
        );
      });
    });
  });
}
