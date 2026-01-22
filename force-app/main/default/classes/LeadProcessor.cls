public with sharing class LeadProcessor implements Database.Batchable<sObject>  {
    public LeadProcessor() {

    }

    public Database.QueryLocator  start ( Database.BatchableContext bc ) 
    {
        return Database.getQueryLocator([select name , leadSource , id from lead]);
    }

    public void execute ( Database.BatchableContext bc , List < Lead >  leads )
    {
        for (Lead l  : leads)
        {
            l.LeadSource = 'Dreamforce';
        }
        update leads ;
    }

    public void finish (Database.BatchableContext bc) 
    {
        System.debug('Update all leads' );
    }
}