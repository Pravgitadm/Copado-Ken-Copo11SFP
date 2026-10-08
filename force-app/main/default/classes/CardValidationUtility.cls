public with sharing class CardValidationUtility {
    
    /**
     * Validates card length purely in memory with zero DML.
     * Immune to background triggers, flows, and recursion limits.
     */
    public static Boolean validateCardNumber(String cardNumber) {
        if (String.isBlank(cardNumber)) {
            return false;
        }
        return cardNumber.trim().length() == 16 && cardNumber.isNumeric();
    }
}