import 'package:form_inputs/form_inputs.dart';
import 'package:test/test.dart';

void main() {
  const validCompanyName = 'Company';
  const companyNameWithSpace = 'My Company';
  const companyNameWithUnderscore = 'My_Company';
  const companyNameWithNumber = 'Company1';
  const companyNameWithSpecialCharacters = 'My *&^ Company';

  group('CompanyName', () {
    group('constructors', () {
      test('pure creates correct instance', () {
        const companyName = CompanyName.pure();
        expect(companyName.value, '');
        expect(companyName.isPure, true);
      });

      test('dirty creates correct instance', () {
        const companyName = CompanyName.dirty(validCompanyName);
        expect(companyName.value, validCompanyName);
        expect(companyName.isPure, false);
      });
    });

    group('validator', () {
      test('returns invalid error when company name is empty', () {
        expect(
          const CompanyName.dirty().error,
          CompanyNameValidationError.invalid,
        );
      });

      test(
          'returns invalid error when company '
          'name contains special characters', () {
        expect(
          const CompanyName.dirty(companyNameWithSpecialCharacters).error,
          CompanyNameValidationError.invalid,
        );
      });

      test('is valid when company name is valid', () {
        expect(
          const CompanyName.dirty(validCompanyName).error,
          isNull,
        );
      });

      test('is valid when company name contains space', () {
        expect(
          const CompanyName.dirty(companyNameWithSpace).error,
          isNull,
        );
      });

      test('is valid when company name contains underscore', () {
        expect(
          const CompanyName.dirty(companyNameWithUnderscore).error,
          isNull,
        );
      });

      test('is valid when company name contains number', () {
        expect(
          const CompanyName.dirty(companyNameWithNumber).error,
          isNull,
        );
      });
    });
  });
}
