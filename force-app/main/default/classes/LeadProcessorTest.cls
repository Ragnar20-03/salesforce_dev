@isTest
public with sharing class LeadProcessorTest {
    public LeadProcessorTest() {

    }
    @isTest
    public static void testingLeadProcessor () 
    {
        list < Lead > leads = new List < Lead > () ;
        for ( Integer i = 0 ; i < 200 ; i ++ )
        {
            Lead led = new Lead(Salutation = 'Mr.', FirstName = 'Demo' , Lastname = 'Testing '+i,Company = 'ABC '+i);
            leads.add(led);
        }

            insert leads ; 
        
            Test.startTest();
            LeadProcessor leadPro = new LeadProcessor () ;
            Database.executeBatch(leadPro , 200);
            Test.stopTest () ;
    } 
}