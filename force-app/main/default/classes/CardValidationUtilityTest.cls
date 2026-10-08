@isTest
public class CardValidationUtilityTest {
    
    @isTest
    static void testValidCard() {
        Test.startTest();
        Boolean result = CardValidationUtility.validateCardNumber('1234567812345678');
        Test.stopTest();
        
        System.assert(result, 'The 16-digit numeric card should be valid.');
    }
    
    @isTest
    static void testInvalidCard() {
        Test.startTest();
        Boolean result = CardValidationUtility.validateCardNumber('1234');
        Test.stopTest();
        
        System.assert(!result, 'The short card number should be invalid.');
    }
}