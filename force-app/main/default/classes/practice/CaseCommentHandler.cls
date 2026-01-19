public with sharing class CaseCommentHandler {
    public CaseCommentHandler() {

    }
    
    public static map < Id , Integer > countCaseComments () 
    {
        map < Id , Integer > res = new map < Id , Integer > () ; 

         List<CaseComment> comments = [
            SELECT Id, ParentId 
            FROM CaseComment
        ];

        for (CaseComment cc : comments) {
            if (!res.containsKey(cc.ParentId)) {
                res.put(cc.ParentId, 1);
            } else {
                res.put(cc.ParentId, res.get(cc.ParentId) + 1);
            }
        }

        System.debug([SELECT COUNT() FROM CaseComment]);



        return res ;
    }
}