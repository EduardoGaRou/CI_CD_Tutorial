@isTest
private class ParkLocatorTest
{
    @isTest
    private static void testParkMock()
    {
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        String cntr = 'United States';
        List<String> result = parkLocator.country(cntr);
        List<String> parks = new List<String>{'Yellowstone','Mackinac National Park','Yosemite'};
        System.assertEquals(parks, result);
    }
}