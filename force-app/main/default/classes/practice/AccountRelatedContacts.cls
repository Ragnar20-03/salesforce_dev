public with sharing class AccountRelatedContacts {
    public AccountRelatedContacts() {

    }

    public static  void countRelatedContacts (Account accountId) 
    {
        list < Contact > contacts = new list < Contact > () ; 
        contacts = [select name from contact where AccountId = :accountId ] ;
        System.debug('Related contacts are ', contacts.size())
    }
}