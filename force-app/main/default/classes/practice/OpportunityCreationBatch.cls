public class OpportunityCreationBatch implements Database.Batchable < Opportunity >  {
    public OpportunityCreationBatch() {

    }

    public  Iterable<Opportunity> start (Database.BatchableContext bc )
    {


        return  [SELECT Id FROM Opportunity WHERE Name LIKE '%Roshan%'] ;
        

    }

    public void execute ( Database.BatchableContext bc , list < Opportunity> data)
    {
        delete data ; 
    }

    public void finish (Database.BatchableContext bc ) 
    {
        System.debug ( 'Deletd all  10000 records succesfully !');
    }

}