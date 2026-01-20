public class OpportunityCreationBatch implements Database.Batchable < Opportunity >  {
    public OpportunityCreationBatch() {

    }

    public list < Integer >  start (Database.BatchableContext bc )
    {
        list < Integer > numbers = new list < Integer> () ; 
        for (Integer i = 1 ; i <= 10000 ; i++ )
        {
            numbers.add(i);
        }

        return numbers ;
    }

    public void execute ( Database.BatchableContext bc , list < Integer> data)
    {
        list < Opportunity > oppList = new list <Opportunity >() ; 
        for (integer i : data)
        {   
            oppList.add(new Opportunity (
                Name = 'Roshan ' + i ,
                StageName = 'Prospecting' , 
                CloseDate = Date.today().addDays(30)

            ));

        }

        insert oppList;
    }

    public void finish (Database.BatchableContext bc ) 
    {
        System.debug ( 'INserted 1000 records succesfully !');
    }

}