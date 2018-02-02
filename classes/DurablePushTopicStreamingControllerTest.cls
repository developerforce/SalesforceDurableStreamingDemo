@isTest
public class DurablePushTopicStreamingControllerTest {

    public static testmethod void one(){
        DurablePushTopicStreamingController c = new DurablePushTopicStreamingController();
        c.getOrCreatePushChannel();
    }

    public static testmethod void two(){

        PushTopic topic = new PushTopic();
        topic.Name = 'TestTopic';
        topic.Query = 'SELECT Id,FirstName FROM Contact';
        topic.NotifyForFields = 'Referenced';
        topic.ApiVersion = 37.0;
        insert topic;
        
        DurablePushTopicStreamingController.TOPIC_NAME = 'TestTopic';
        DurablePushTopicStreamingController c = new DurablePushTopicStreamingController();
        
        c.getOrCreatePushChannel();
        System.assert(c.topicId == topic.id);
    }
}