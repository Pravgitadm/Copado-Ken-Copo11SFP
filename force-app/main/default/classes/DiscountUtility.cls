public with sharing class DiscountUtility {
    // Original base logic: 10% discount for orders over 1000
    public static Decimal calculateDiscount(Decimal orderAmount) {
        if (orderAmount > 1000) {
            return orderAmount * 0.10; 
        }
        return 0;
    }
}