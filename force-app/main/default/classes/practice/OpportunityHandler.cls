public with sharing class OpportunityHandler {
    public OpportunityHandler() {
   
    }
    public static void checkOpportunity (list < Opportunity > opportunities)
    {
        List<Opportunity> oppToBeInserted = new list < Opportunity > () ; 
        for ( Opportunity opp : opportunities)
        {
            if (opp.Amount > 999999 )
            {
                oppToBeInserted.add(opp);
            }
        }
        insert oppToBeInserted;
    }
}