@isTest
private class DiscountUtilityTest {
    
    @isTest
    static void testVIPDiscount() {
        DiscountUtility.isVIP = true; // Turn VIP mode ON
        
        Test.startTest();
        Decimal discount = DiscountUtility.calculateDiscount(1000);
        Test.stopTest();
        System.assertEquals(200, discount, 'Should calculate 20% VIP discount');
    }

    @isTest
    static void testBaseDiscountWhenNotVIP() {
        DiscountUtility.isVIP = false; // Turn VIP mode OFF to reach the red lines
        
        Test.startTest();
        Decimal discount = DiscountUtility.calculateDiscount(1500);
        Test.stopTest();
        System.assertEquals(150, discount, 'Should calculate 10% base discount');
    }
}