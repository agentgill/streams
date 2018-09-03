@IsTest class FlowServiceTest
{
    @IsTest static void testServiceOutputsFlowState()
    {
        //arrange
        Map<String,Object> event = new Map<String,Object>{
            'first_name' => 'bob',
            'last_name' => 'loblaw',
            'registration_status' => 'pending',
            'registration_email' => 'bob@acme.com'
        };
        
        //act
        List<Map<String,Object>> events = new FlowService().execute(event);
        
        //assert
        System.assertEquals(event, events[0], 'wrong output event');
        
        //coverage
        new FlowService.Definition();
    }
}
