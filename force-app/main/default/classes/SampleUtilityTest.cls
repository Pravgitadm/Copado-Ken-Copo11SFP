@isTest
private class SampleUtilityTest {
    @isTest
    static void testGetMessage() {
        String msg = SampleUtility.getMessage();
        System.assertEquals('Message Version A', msg, 'The message does not match.');
    }
}