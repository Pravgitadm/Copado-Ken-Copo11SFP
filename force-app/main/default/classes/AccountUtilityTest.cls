@isTest
public class AccountUtilityTest {
    @isTest
    static void testUpdateActiveStatus() {
        Account testAcc = new Account(Name = 'Test Account');
        insert testAcc;
        
        List<Account> accList = [SELECT Id, Name, Description FROM Account WHERE Id = :testAcc.Id];
        
        Test.startTest();
        AccountUtility.updateActiveStatus(accList);
        Test.stopTest();
        
        System.assertEquals('Verified by Copado CI/CD', accList[0].Description, 'Description should match the utility update.');
    }
}