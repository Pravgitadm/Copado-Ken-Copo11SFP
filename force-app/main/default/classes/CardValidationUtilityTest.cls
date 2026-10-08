@isTest
private class CardValidationUtilityTest {

    @isTest
    static void testValidateCardNumber_Valid() {
        // Test a valid 16-digit numeric card number
        String validCard = '1234567890123456';
        
        Test.startTest();
        Boolean result = CardValidationUtility.validateCardNumber(validCard);
        Test.stopTest();
        
        Assert.isTrue(result, 'A 16-digit numeric card string should be valid.');
    }

    @isTest
    static void testValidateCardNumber_ValidWithWhitespace() {
        // Test a valid 16-digit numeric card number surrounded by spaces
        String validCardWithSpaces = '  1234567890123456  ';
        
        Test.startTest();
        Boolean result = CardValidationUtility.validateCardNumber(validCardWithSpaces);
        Test.stopTest();
        
        Assert.isTrue(result, 'The utility should trim whitespaces and validate a 16-digit numeric card.');
    }

    @isTest
    static void testValidateCardNumber_InvalidLength() {
        // Test a card number that is too short
        String shortCard = '12345';
        
        Test.startTest();
        Boolean result = CardValidationUtility.validateCardNumber(shortCard);
        Test.stopTest();
        
        Assert.isFalse(result, 'A card number with less than 16 digits should be invalid.');
    }

    @isTest
    static void testValidateCardNumber_NonNumeric() {
        // Test a 16-character string containing letters
        String nonNumericCard = '123456789012345A';
        
        Test.startTest();
        Boolean result = CardValidationUtility.validateCardNumber(nonNumericCard);
        Test.stopTest();
        
        Assert.isFalse(result, 'A card number containing non-numeric characters should be invalid.');
    }

    @isTest
    static void testValidateCardNumber_Blank() {
        // Test null, empty, and whitespace-only strings
        Test.startTest();
        Boolean resultNull = CardValidationUtility.validateCardNumber(null);
        Boolean resultEmpty = CardValidationUtility.validateCardNumber('');
        Boolean resultWhitespace = CardValidationUtility.validateCardNumber('   ');
        Test.stopTest();
        
        Assert.isFalse(resultNull, 'A null card number should return false.');
        Assert.isFalse(resultEmpty, 'An empty card number should return false.');
        Assert.isFalse(resultWhitespace, 'A whitespace-only card number should return false.');
    }
}