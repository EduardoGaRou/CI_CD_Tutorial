@isTest
private class AnimalLocatorTest
{
	@isTest
    private static void testAnimalLocatorMocker()
    {
        try
        {
            Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
            String result = AnimalLocator.getAnimalNameById(1);
            String expected = 'fox';
            System.assertEquals(expected, result);
        }
        catch(Exception e)
        {
            System.debug('Something went wrong: '+ e.getMessage());
        }
    }
}