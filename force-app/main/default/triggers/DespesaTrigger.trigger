trigger DespesaTrigger on Despesa__c(before insert, before update) {
    for(Despesa__c item : Trigger.new) {
        if(item.Valor__c < 200) {
            item.addError('Coloque um valor acima de 200');
        }
    }
}