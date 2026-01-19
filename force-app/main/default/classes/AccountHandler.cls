public class AccountHandler {
    public AccountHandler() {

    }
    public static void createContact (List < Account > accounts) 
    {
        List <Contact > contacts = new List < Contact > ();

    for ( Account acc : accounts)
    {
        Contact newContact = new Contact () ; 
        newContact.LastName = 'ABCD '; 
        newCOntact.AccountId = acc.Id ;
        contacts.add(newContact);
    }
        insert contacts ;
    }
}