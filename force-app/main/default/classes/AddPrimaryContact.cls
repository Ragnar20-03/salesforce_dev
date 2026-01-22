public with sharing class AddPrimaryContact implements Queueable {

    private Contact con  ;
    private String stateAbbrivation ;
    public AddPrimaryContact(Contact con  , String stateAbbrivation) {
        this.con = con;
        this.stateAbbrivation = stateAbbrivation;
    }

    publi execute () 
    {
        List < Account > accounts = [select id , name ,BillingState from account where BillingState = :this.stateAbbrivation limit 200];
        List < Contact > contacts = new List < Contact > () ;
        for (Account acc : accounts )
        {
            Contact newContact  = this.con.clone(false , true , false , false );
            newContact.AccountId = acc.Id;
            contacts.add ( newContact);
        }
        if (contacts.size () > 0 )
        {
            insert contacts ; 
        }
            
    }
}