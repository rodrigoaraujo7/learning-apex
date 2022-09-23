// Creating a trigger and put the times
trigger LeadTrigger on Lead(after insert, after update) {
    if(Trigger.isAfter) {
        if(Trigger.isInsert) {
            LeadHandler.leadAfter(Trigger.new);
        } else if(Trigger.isUpdate) {
            LeadHandler.leadAfter(Trigger.new);
        }
    }
}