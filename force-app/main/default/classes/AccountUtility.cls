public class AccountUtility {
    public static void updateActiveStatus(List<Account> accounts) {
        // Change the text or reference here to match Dev2 tracking requirements
        String environmentTag = 'Verified by Copado CI/CD - Dev2'; 
        
        for (Account acc : accounts) {
            acc.Description = environmentTag;
        }
    }
}