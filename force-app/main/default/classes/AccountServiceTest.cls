@isTest
private class AccountServiceTest {

    @isTest
    static void testUpdateAccountDescription() {
        // 1. Arrange: Create test data setup
        Account testAcc = new Account(Name = 'Copado Test Org Account');
        insert testAcc;
        
        List<Account> accountList = new List<Account>{ testAcc };

        // 2. Act: Execute the target code within Test execution blocks
        Test.startTest();
        AccountService.updateAccountDescription(accountList);
        update accountList;
        Test.stopTest();

        // 3. Assert: Validate results to pass Copado compliance checks
        Account updatedAcc = [SELECT Description FROM Account WHERE Id = :testAcc.Id LIMIT 1];
        System.assertEquals(
            'Updated by Copado Deployment Pipeline Automation.', 
            updatedAcc.Description, 
            'The description should be updated correctly by the service class.'
        );
    }
    
    @isTest
    static void testUpdateAccountDescriptionEmptyList() {
        // Test edge case to ensure 100% conditional branch coverage
        Test.startTest();
        AccountService.updateAccountDescription(new List<Account>());
        Test.stopTest();
        
        // Assert absence of exceptions
        System.assert(true, 'Empty list handled safely.');
    }
}