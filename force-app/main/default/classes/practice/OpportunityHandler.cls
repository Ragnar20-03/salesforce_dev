public with sharing class OpportunityHandler {
    public OpportunityHandler() {
   
    }
    public static void checkOpportunity (list < Opportunity > opportunities)
    {

        for ( Opportunity opp : opportunities)
        {
            if (opp.Amount <= 999999 )
            {
               opp.addError('Amount is too lesss ... we dont  .... !');
            }
        }

    }
}