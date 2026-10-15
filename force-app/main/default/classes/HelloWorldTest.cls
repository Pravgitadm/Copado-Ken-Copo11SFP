@isTest
private class HelloWorldTest {
    @isTest 
    static void testMe() {
        String expected = 'Hello World';
        String actual = HelloWorld.sayHello();
        System.assertEquals(expected, actual, 'The greeting message did not match.');
    }
}