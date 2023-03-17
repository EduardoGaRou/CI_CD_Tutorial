@isTest
global class AnimalLocatorMock implements HttpCalloutMock
{
    global HTTPResponse respond(HTTPRequest req)
    {
        HttpResponse res = new HttpResponse();
        res.setHeader('Content-Type','application/json');
        res.setBody('{"animals":["lion","fox","panda","racoon"]}');
        res.setStatusCode(200);
        return res;
    }
}