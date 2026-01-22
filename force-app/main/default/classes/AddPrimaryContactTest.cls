@isTest
public class AddPrimaryContactTest {

    @isTest
    static void testProcessor() {

        List<Account> accounts = new List<Account>();
        for (Integer i = 0; i < 50; i++) {
            accounts.add(new Account(Name = 'Roshan ' + i, BillingState = 'California' ,    BillingCountry = 'United States'));
            accounts.add(new Account(Name = 'Kishan ' + i, BillingState = 'New York'  , BillingCountry = 'United States'));
        }
        
        System.debug('Herere !');
        insert accounts;
        System.debug('Herere !');
        Contact con = new Contact(
            FirstName = 'Roshann',
            LastName = 'Patil',
            Salutation = 'Mr.'
        );
        insert con;

        Test.startTest();
        Id jID=  System.enqueueJob(new AddPrimaryContact(con, 'New York'));
        System.debug('Cuurent Job ID is : ' + jID);
        Test.stopTest();

        Integer nyContacts =
            [SELECT COUNT() FROM Contact WHERE Account.BillingState = 'New York'];

        Integer caContacts =
            [SELECT COUNT() FROM Contact WHERE Account.BillingState = 'California'];

        System.assertEquals(50, nyContacts);
        System.assertEquals(0, caContacts);
    }
}