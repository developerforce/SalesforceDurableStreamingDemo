public class DurableGenericStreamingController {

    public String channel{get; private set;}
    public Id channelId{get; private set;}
    public Integer replayFrom{get;set;}
    
    public DurableGenericStreamingController() {
        this.channel = '/u/TestStreaming';
        this.replayFrom = -2;
        this.channelId = getStreamingChannelId(this.channel).Id;
    }
    
    private StreamingChannel getStreamingChannelId(String channel) {
        return [SELECT Id FROM StreamingChannel WHERE Name=:channel];
    }
}
