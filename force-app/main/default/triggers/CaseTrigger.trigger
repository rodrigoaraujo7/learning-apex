trigger CaseTrigger on Case (before insert) {
    if(Trigger.isBefore) {
        if(Trigger.isInsert) {
            CaseHandler.caseBefore(Trigger.new);
        } 
    }
}