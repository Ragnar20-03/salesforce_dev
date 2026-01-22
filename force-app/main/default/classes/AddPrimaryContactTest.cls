@isTest
public with sharing class AddPrimaryContactTest {
    public AddPrimaryContactTest() {

    }
    @isTest 
    public static void testProcessor () 
    {
        list < Account > accounts = new list <Account> () ;
        for (Integer i = 0 ; i < 50 ; i++ )
        {
            Account acc = new Account (Name = 'Roshan ' + i ,  BillingState = 'NY');
            Account secondAcc = new Account (Name = 'Kishan ' + i ,  BillingState = 'CA');
            accounts.add(acc);
            accounts.add(secondAcc);
        }

        insert accounts;

        Test.startTest();
        Contact con = new Contact ( FirstName = 'Roshann ' , LastName = 'Patil' , Salutation = 'Mr.' );
        AddPrimaryContact obj = new AddPrimaryContact (con , 'NY') ;
        Id jid = System.enqueueJob(obj);
        Test.stopTest() ;
    }
}