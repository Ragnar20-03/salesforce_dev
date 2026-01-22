public with sharing class DailyLeadProcessor implements Schedulable {
    public DailyLeadProcessor() {

    }

 	public void execute ( System.SchedulableContext sc )
        {

        List < Lead > leads = new List  <Lead > () ; 
        
        leads = [select Id , Name , LeadSource from Lead ];
        for (Lead currentLead : leads)
        {
            if (currentLead.LeadSource == null || currentLead.LeadSource == '')
            {   
                currentLead.LeadSource = 'Dreamforce';
            }
        }
        
        if (leads.size() > 0 )
        {
            update leads ;  
        }
        
        }
    
  
}