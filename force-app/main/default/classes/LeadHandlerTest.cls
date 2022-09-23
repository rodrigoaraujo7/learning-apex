@isTest
public class LeadHandlerTest {  
    @isTest public static void testCreateLeadTaskInsertPositive() {
        Lead newLead = new Lead(); 

        newLead.LastName = 'Teste';
        newLead.Company = 'Testando SA';
        insert newLead;

        List<Lead> lstLead = new List<Lead>();
        lstLead = [SELECT Id FROM Lead WHERE Id=:newLead.id];

        List<Task> lstTask = new List<Task>();
        lstTask = [SELECT Id, WhoId FROM Task WHERE WhoId in: lstLead];
        System.assert (lstTask != NULL, 'A tarefa foi criada'); 
    }

    @isTest public static void testCreateLeadTaskInsertNegative(){
        Lead newLead = new Lead(); 

        newLead.LastName = 'Teste';
        newLead.Company = 'Testando SA';
        insert newLead;
        
        List<Lead> lstLead = new List<Lead>();
        lstLead = [SELECT Id FROM Lead WHERE Id=:newLead.id];

        List<Task> lstTask = new List<Task>();
        lstTask = [SELECT Id, WhoId FROM Task WHERE WhoId in: lstLead];
        System.assert (lstTask.size() == 0, '🟣 O resultado não é o esperado!');    
    }

    @isTest public static void testCreateLeadTaskUpdatePositive() {
        Lead newLead = new Lead(); 

        newLead.LastName = 'Teste';
        newLead.Company = 'Testando SA';
        insert newLead;

        List<Lead> lstLead = new List<Lead>();
        lstLead = [SELECT Id FROM Lead WHERE Id=:newLead.id];

        List<Task> lstTask = new List<Task>();
        lstTask = [SELECT Id, WhoId FROM Task WHERE WhoId in: lstLead];
        System.assert (lstTask != NULL, 'A tarefa foi criada'); 
    }

    @isTest public static void testCreateLeadTaskUpdateNegative(){
        Lead newLead = new Lead(); 

        newLead.LastName = 'Teste';
        newLead.Company = 'Testando SA';
        insert newLead;

        newLead.FirstName = 'Rodrigo';
        update newLead;
        
        List<Lead> lstLead = new List<Lead>();
        lstLead = [SELECT Id FROM Lead WHERE Id=:newLead.id];

        List<Task> lstTask = new List<Task>();
        lstTask = [SELECT Id, WhoId FROM Task WHERE WhoId in: lstLead];
        System.assert (lstTask.size() == 0, '🟣 O resultado não é o esperado!');    
    }
}