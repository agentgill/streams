@IsTest class LogServiceTest
{
    @IsTest static void testServiceResults()
    {
        //arrange
        Map<String,Object> event = new Map<String,Object>{'address' => 'test@host'};
        
        //act
        List<Map<String,Object>> events = new LogService().execute(event);

        //assert
        System.assert(events[0].get('results') instanceof List<Messaging.SendEmailResult>);
        
        //cover
        new LogService.Definition();
    }
}
