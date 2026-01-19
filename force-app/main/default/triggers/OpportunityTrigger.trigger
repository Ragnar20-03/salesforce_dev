trigger OpportunityTrigger on Opportunity (before insert , before update) {
    List < Opportunity > opprtunities = new list < Opportunity > () ; 

 
            OpportunityHandler.changeStageName( trigger.new);

}