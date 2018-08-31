abstract public class Service implements Callable
{
    abstract List<Map<String,Object>> execute(Map<String,Object> event);

    public Object call(String method, Map<String,Object> arguments)
    {
        if (method == 'execute')
        {
            Map<String,Object> event = (Map<String,Object>)arguments.get('event');
            List<Map<String,Object>> events = this.execute(event);
            return events;
        }

        throw new StringException('Method not implemented: ' + method);
    }
}