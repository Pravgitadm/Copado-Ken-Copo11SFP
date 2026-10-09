public class CardValidationUtility {
    public static Boolean validateCardLength(String cardNumber) {
        if (String.isBlank(cardNumber)) {
            return false;
        }
        return cardNumber.length() == 16;
    }
}