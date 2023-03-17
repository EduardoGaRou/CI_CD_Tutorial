public class ParkLocator
{
	public static String[] country(String cntr)
    {
        ParkService.ParksImplPort parkSvc = new ParkService.ParksImplPort();
        return parkSvc.byCountry(cntr);
    }
}