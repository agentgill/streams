public class LogService extends Service
{
    public class Definition
    {
        String Tag = 'Examples';
        String Label = 'Log Service';
        String Description = 'Sends an email containing the event parameters.';
        String Icon = 'lightning';
        Integer Chunks = 5;
        String Cardinality = 'One';
        Map<String,String> StepConfig = new Map<String,String>{'address' => 'String'};
    }

    @TestVisible List<Map<String,Object>> execute(Map<String,Object> event)
    {
        String address = (String)event.get('address');

        Messaging.SingleEmailMessage message = new Messaging.SingleEmailMessage();
        message.setSubject('[Log] ' + UserInfo.getOrganizationName());
        message.setPlainTextBody(Json.serializePretty(event));
        message.setToAddresses(new List<String>{address});
        
        event.put('results', Messaging.sendEmail(
            new List<Messaging.Email>{message},
            !Test.isRunningTest()
        ));
        
        return new List<Map<String,Object>>{event};
    }
}
