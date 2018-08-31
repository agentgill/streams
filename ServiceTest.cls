@IsTest class ServiceTest
{
    class CallableService extends Service
    {
        List<Map<String,Object>> execute(Map<String,Object> event)
        {
            //passthrough service
            return new List<Map<String,Object>>{event};
        }
    }

    @IsTest static void testCallableService()
    {
        //arrange
        Map<String,Object> event;
        
        //act
        Callable impl = new CallableService();
        Object events = impl.call('execute', new Map<String,Object>{'event' => event});
        
        //assert
        System.assert(events instanceof List<Map<String,Object>>);
    }
}
