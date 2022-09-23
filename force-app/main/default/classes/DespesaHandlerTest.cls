@isTest
public class DespesaHandlerTest {
    @isTest
    public static void testDespesaCreateTask() {
        try {
            List<Task> lstTaskInsert = new List<Task>();
            Despesa__c itemDespesa = new Despesa__c();
    
            itemDespesa.Valor__c = 17000;
            insert itemDespesa;

            itemDespesa.Valor__c = 12000;
            update itemDespesa;
            
            Task newTask = new Task();
            newTask.subject = 'Verificar despesas para confirmação';
            newTask.WhatId = itemDespesa.Id;
            lstTaskInsert.add(newTask);
        } catch(Exception testVerify) {
            Boolean test = testVerify.getMessage().contains('Insira um valor positivo!') ? true : false;
        }
    }

    @isTest
    public static void testFailDespesaCreateTask() {
        try {
            Despesa__c itemDespesa = new Despesa__c();
    
            itemDespesa.Valor__c = 17000;
            insert itemDespesa;
    
            itemDespesa.Valor__c = -100;
            update itemDespesa;
        } catch(Exception testVerify) {
            Boolean test = testVerify.getMessage().contains('Insira um valor positivo!') ? true : false;
        }
    }
}