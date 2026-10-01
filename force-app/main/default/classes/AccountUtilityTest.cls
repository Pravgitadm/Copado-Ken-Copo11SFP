@isTest
public class AccountUtilityTest {
    @isTest
    static void testUpdateActiveStatus() {
        Account testAcc = new Account(Name = 'Dev2 Test Account');
        insert testAcc;
        
        List<Account> accList = [SELECT Id, Name, Description FROM Account WHERE Id = :testAcc.Id];
        
        Test.startTest();
        AccountUtility.updateActiveStatus(accList);
        Test.stopTest();
        
        // Assert updated to look for the Dev2 specific tag
        System.assertEquals('Verified by Copado CI/CD - Dev2', accList[0].Description, 'Description should match the Dev2 utility update.');
    }
}