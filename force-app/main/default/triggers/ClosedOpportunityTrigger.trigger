trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {

    List<Task> tasksToInsert = new List<Task>();

    for (Opportunity opp : Trigger.new) {

        // For update, ensure stage changed to Closed Won
        if (opp.StageName == 'Closed Won') {

            if (Trigger.isUpdate) {
                Opportunity oldOpp = Trigger.oldMap.get(opp.Id);
                if (oldOpp.StageName == 'Closed Won') {
                    continue; // already closed won before, skip
                }
            }

            Task t = new Task();
            t.Subject = 'Follow Up Test Task';
            t.WhatId = opp.Id;
            t.Status = 'Not Started';
            t.Priority = 'Normal';

            tasksToInsert.add(t);
        }
    }

    if (!tasksToInsert.isEmpty()) {
        insert tasksToInsert;
    }
}
