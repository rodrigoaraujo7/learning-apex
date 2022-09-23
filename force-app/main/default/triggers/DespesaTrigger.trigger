trigger DespesaTrigger on Despesa__c(after update) {
    if(Trigger.isAfter) {
        if(Trigger.isUpdate) {
            DespesaHandler.despesaAfter(Trigger.new);
        }
    }
}