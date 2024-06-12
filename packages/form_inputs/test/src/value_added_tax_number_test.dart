import 'package:form_inputs/form_inputs.dart';
import 'package:test/test.dart';

void main() {
  const validVATNumber = 'ESB1900320';
  const vatNumberWithoutPrefix = '123456789';
  const vatNumberWithInvalidCharacters = 'GB12@3456';

  group('ValueAddedTaxNumber', () {
    group('constructors', () {
      test('pure creates correct instance', () {
        const vatNumber = ValueAddedTaxNumber.pure();
        expect(vatNumber.value, '');
        expect(vatNumber.isPure, true);
      });

      test('dirty creates correct instance', () {
        const vatNumber = ValueAddedTaxNumber.dirty(validVATNumber);
        expect(vatNumber.value, validVATNumber);
        expect(vatNumber.isPure, false);
      });
    });

    group('validator', () {
      test('returns invalid error when VAT number is empty', () {
        expect(
          const ValueAddedTaxNumber.dirty().error,
          ValueAddedTaxNumberValidationError.invalid,
        );
      });

      test('returns invalid error when VAT number is missing country prefix',
          () {
        expect(
          const ValueAddedTaxNumber.dirty(vatNumberWithoutPrefix).error,
          ValueAddedTaxNumberValidationError.invalid,
        );
      });

      test('returns invalid error when VAT number contains invalid characters',
          () {
        expect(
          const ValueAddedTaxNumber.dirty(vatNumberWithInvalidCharacters).error,
          ValueAddedTaxNumberValidationError.invalid,
        );
      });

      test('is valid when VAT number is valid', () {
        expect(
          const ValueAddedTaxNumber.dirty(validVATNumber).error,
          isNull,
        );
      });
    });
  });
}
