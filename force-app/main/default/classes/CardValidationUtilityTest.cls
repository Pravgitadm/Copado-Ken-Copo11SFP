@IsTest
private class CardValidationUtilityTest {
    @IsTest
    static void testValidCard() {
        Test.startTest();
        Boolean result = CardValidationUtility.validateCardLength('1234567812345678');
        Test.stopTest();
        System.assert(result, 'The card number should be valid.');
    }

    @IsTest
    static void testInvalidCardLength() {
        Test.startTest();
        Boolean result = CardValidationUtility.validateCardLength('1234');
        Test.stopTest();
        System.assert(!result, 'The card number should be invalid.');
    }

    @IsTest
    static void testBlankCard() {
        Test.startTest();
        Boolean resultNull = CardValidationUtility.validateCardLength(null);
        Boolean resultEmpty = CardValidationUtility.validateCardLength('');
        Test.stopTest();
        System.assert(!resultNull, 'Null card should return false.');
        System.assert(!resultEmpty, 'Blank card should return false.');
    }
}