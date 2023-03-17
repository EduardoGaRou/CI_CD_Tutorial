@isTest
global class ParkServiceMock implements WebServiceMock
{
	global void doInvoke(
    	Object stub,
        Object req,
        Map<String,Object> res,
        String endpoint,
        String soapAction,
        String reqName,
        String resNS,
        String resName,
        String resType
    )
    {
        ParkService.byCountryResponse res_x = new ParkService.byCountryResponse();
        res_x.return_x = new List<String>{'Yellowstone','Mackinac National Park','Yosemite'};
        res.put('res_x',res_x);
    }
}