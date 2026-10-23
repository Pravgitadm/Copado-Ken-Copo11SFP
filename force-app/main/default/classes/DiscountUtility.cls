public with sharing class DiscountUtility {
    // Allows the test class to turn VIP status on or off
    @TestVisible private static Boolean isVIP = true; 

    public static Decimal calculateDiscount(Decimal orderAmount) {
        // Now it reads the class variable dynamically
        if (isVIP) {
            return orderAmount * 0.20; 
        }
        
        if (orderAmount > 1000) {
            return orderAmount * 0.10; 
        }
        return 0;
    }
}