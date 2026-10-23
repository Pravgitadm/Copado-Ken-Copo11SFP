public with sharing class DiscountUtility {
    // Allows the test class to turn Holiday season on or off
    @TestVisible private static Boolean isHolidaySeason = true; 

    public static Decimal calculateDiscount(Decimal orderAmount) {
        if (orderAmount > 1000) {
            return orderAmount * 0.10; 
        }
        
        // Now it reads the class variable dynamically
        if (isHolidaySeason) {
            return orderAmount * 0.05; 
        }
        return 0;
    }
}