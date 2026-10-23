@isTest
private class DiscountUtilityTest {
    
    @isTest
    static void testBaseDiscountFirst() {
        DiscountUtility.isHolidaySeason = true; 
        
        Test.startTest();
        // Amount over 1000 hits the base discount first and returns early
        Decimal discount = DiscountUtility.calculateDiscount(1500);
        Test.stopTest();
        System.assertEquals(150, discount, 'Should calculate 10% base discount');
    }

    @isTest
    static void testHolidayDiscount() {
        DiscountUtility.isHolidaySeason = true; // Turn Holiday mode ON
        
        Test.startTest();
        // Amount under 1000 skips base discount and hits holiday discount
        Decimal discount = DiscountUtility.calculateDiscount(500);
        Test.stopTest();
        System.assertEquals(25, discount, 'Should calculate 5% Holiday discount');
    }

    @isTest
    static void testNoDiscount() {
        DiscountUtility.isHolidaySeason = false; // Turn Holiday mode OFF
        
        Test.startTest();
        // Amount under 1000 with holiday off hits the final return 0
        Decimal discount = DiscountUtility.calculateDiscount(500);
        Test.stopTest();
        System.assertEquals(0, discount, 'Should return 0 discount');
    }
}