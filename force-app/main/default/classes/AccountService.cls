public with sharing class AccountService {
    
    /**
     * Simple method to update Account descriptions.
     * This will be tracked for code coverage in Copado.
     */
    public static void updateAccountDescription(List<Account> accounts) {
        if (accounts == null || accounts.isEmpty()) {
            return;
        }
        
        for (Account acc : accounts) {
            acc.Description = 'Updated by Copado Deployment Pipeline Automation.';
        }
    }
}