@isTest
private class AccountManagerTest
{
	@isTest
    private static void testGetContactById()
    {
        Id recordId = createTestRecord();
        RestRequest restreq = new RestRequest();
        restreq.requestURI = 'https://yourInstance.my.salesforce.com/services/apexrest/Accounts/'+recordId+'/contacts';
        restreq.httpMethod = 'GET';
        RestContext.request = restreq;
        Account acct = AccountManager.getAccount();
        System.assert(acct != null);
        System.assertEquals('Test Record', acct.Name);       
    }
    
    private static Id createTestRecord()
    {
        Account acct = new Account(Name='Test Record');
        insert acct;
        Contact cnt = new Contact(FirstName='Test',LastName='Contact',AccountId=acct.Id);
        insert cnt;
        return acct.Id;
    }
}