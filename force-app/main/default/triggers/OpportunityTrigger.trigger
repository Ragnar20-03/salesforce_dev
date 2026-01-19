trigger OpportunityTrigger on Opportunity (before insert) {
    OpportunityHandler.checkOpportunity(Trigger.new);
}