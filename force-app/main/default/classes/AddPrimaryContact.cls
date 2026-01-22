public with sharing class AddPrimaryContact implements Queueable {

    private Contact con  ;
    private String stateAbbrivation ;
    public AddPrimaryContact(Contact con  , String stateAbbrivation) {
        this.con = con;
        this.stateAbbrivation = stateAbbrivation;
    }

    public void execute (System.QueueableContext qc) 
    {
        List < Account > accounts = [select id , name ,BillingState from account where BillingState = :this.stateAbbrivation limit 200];
        List < Contact > contacts = new List < Contact > () ;
        for (Account acc : accounts )
        {
            Contact newContact  = this.con.clone(false , false , false , false );
            newContact.AccountId = acc.Id;
            contacts.add ( newContact);
        }
        if (contacts.size () > 0 )
        {
            insert contacts ; 
        }
            
    }
}