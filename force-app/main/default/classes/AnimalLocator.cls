public class AnimalLocator
{
	public static String getAnimalNameById(Integer xid)
    {
        Http http = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+xid);
        req.setMethod('GET');
        Map<String,Object> animal = new Map<String,Object>();
        HttpResponse res = http.send(req);
        if(res.getStatusCode() == 200)
        {
            Map<String,Object> result = (Map<String,Object>) JSON.deserializeUntyped(res.getBody());
            animal = (Map<String,Object>)result.get('animal');
        }
        return (String) animal.get('name');
    }
}