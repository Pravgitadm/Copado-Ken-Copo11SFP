@isTest
private class DiscountUtilityTest {
    @isTest
    static void testBaseDiscount() {
        Test.startTest();
        Decimal discount = DiscountUtility.calculateDiscount(1500);
        Test.stopTest();
        System.assertEquals(150, discount, 'Should calculate 10% base discount');
    }
}