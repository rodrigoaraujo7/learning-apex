trigger LeadTrigger on Lead(before insert, before update) {
    if(Trigger.isBefore) {
        LeadHandler.validaTelefoneCelular(Trigger.new);
    }
}