public with sharing class DespesaController {
    @AuraEnabled(cacheable=true)
    public static List<Despesa__c> getListDespesa() {
        return [SELECT Nome__c, Data__c, ValorUnitario__c, Valor__c FROM Despesa__c ORDER BY CreatedDate DESC LIMIT 10];
    }
}
