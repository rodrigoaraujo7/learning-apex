public class DespesaHandler {
    // Methods to after triggers
    public static void despesaAfter(List<Despesa__c> listDespesa) {
        List<Task> lstTaskInsert = new List<Task>();
        for(Despesa__c itemDespesa: listDespesa) { 
            if(itemDespesa.Valor__c > 0 && itemDespesa.Valor__c <= 15000) {
                Task newTask = new Task();
                newTask.subject = 'Verificar despesas para confirmação';
                newTask.WhatId = itemDespesa.Id;
                lstTaskInsert.add(newTask);
            } else if(itemDespesa.Valor__c < 0) {
                itemDespesa.Valor__c.addError('Insira um valor positivo!');
            } 
        }

        if(!lstTaskInsert.isEmpty()) {
            insert lstTaskInsert;
        }
    }
}