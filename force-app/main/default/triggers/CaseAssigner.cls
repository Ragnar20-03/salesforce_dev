public with sharing class CaseAssigner {
    public CaseAssigner() {

    }

    public static void assignCase () 
    {
        list < Case > cases = new List < case > () ; 
        Id queueId ; 
        Group g = [select id  from group where type = 'Queue' AND name = 'myQueue'];
        queueId = g.id;

        cases = [ select id , ownerId , status from case where status = 'New'];
        Integer res = 0 ; 
        for (case c : cases)
        {
            if (c.OwnerId != queueId ) 
            {
                c.OwnerId = queueId ; 
                System.debug('hgererere');
                res ++ ; 
            }
        }
        update cases ; 
        System.debug('Case Assigned : ' + res); 
    }
}