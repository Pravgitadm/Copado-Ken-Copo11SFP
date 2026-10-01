public class AccountUtility {
    public static void updateActiveStatus(List<Account> accounts) {
        for (Account acc : accounts) {
            acc.Description = 'Verified by Copado CI/CD';
        }
    }
}