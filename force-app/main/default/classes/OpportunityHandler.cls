public with sharing class OpportunityHandler {
    public OpportunityHandler() {

    }

    public static void changeStageName ( List < Opportunity > oppList )
    {
        for ( Opportunity opp : oppList)
        {
            if ( opp.Amount > 100000 && opp.StageName != 'Closed Won')
            {
                opp.StageName = 'Closed Won';
            }
        }
    }
}