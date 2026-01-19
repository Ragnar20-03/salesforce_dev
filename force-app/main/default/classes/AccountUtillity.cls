public class AccountUtillity {

    public void CreateSingleAccount (string accName) 
    {
        Account a1 = new Account () ;
        a1.name = accName; 
        insert a1 ; 

       	List<Account> myAccounts  = new List<Account>();
        myAccounts = [select id , name from Account where name=:accName];
        system.debug(myAccounts);
        
	}
    
    public void createMultiAccount(string name , integer n)
        {
            List<Account> accToBeCreated = new List<Account> () ; 
            for ( integer i = 1 ; i <= n ; i++ )
                {
                    string newAccName = name + ' ' + i ;
                    accToBeCreated.add ( new Account(name =newAccName));
                }
            	insert accToBeCreated ;
            	List<Account> myAccounts  = new List<Account>();
            myAccounts = [select id , name from Account    WHERE Name LIKE :('%' + name + '%')];
            system.debug(myAccounts);
        }
}