@RestResource(urlMapping='/Accounts/*/contacts')
global with sharing class AccountManager
{
	@HttpGet
    global static Account getAccount()
    {
        RestRequest restreq = RestContext.request;
        String aid = restreq.requestURI.substringBetween('Accounts/','/contacts');
        Account acct = [SELECT Id, Name, (SELECT Id, Name FROM Contacts) FROM Account WHERE Id = :aid LIMIT 1];
        return acct;
    }
}