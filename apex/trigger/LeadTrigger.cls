trigger LeadTrigger on Lead(before insert, before update, after insert, after update) {
    if(Trigger.isBefore) {
        if(Trigger.isInsert) {
            
        } else if(Trigger.isUpdate) {

        }
    }
}