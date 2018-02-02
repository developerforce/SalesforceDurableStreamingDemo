@isTest
public class DurableGenericStreamingControllerTest {

    public static testmethod void one(){
        StreamingChannel chan = new StreamingChannel();
        chan.Name = '/u/TestStreaming';
        insert chan;
        DurableGenericStreamingController c = new DurableGenericStreamingController();
        System.assert(chan.id == c.channelId, 'Expected the channel id belonging to the streaming channel /u/TestStreaming');
    }
}