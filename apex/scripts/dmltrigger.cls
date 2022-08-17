// 2
trigger OpportunityTrigger on Opportunity(after update) {
    List<Task> lstTask = new List<Task>();

    for(Opportunity itemOpp : Trigger.new) {
        if(itemOpp.Amount >= 50000 && itemOpp.StageName == 'Closed Won') {
            Task newTask = new Task();

            newTask.Subject = 'Parabens pela sua nova aquisição!';
            newTask.WhatId = itemOpp.Id;
            lstTask.add(newTask);
        }
        insert lstTask;
    }
}

// 3
trigger LeadTrigger on Lead(after update) {
    List<Task> lstTask = new List<Task>();
    
    for(Lead itemLead : Trigger.new) {
        if(itemLead.AnnualRevenue > 50000) {
            Task newTask = new Task();

            newTask.Subject = 'Verificar se o cadastro está completo!';
            newTask.WhoId = itemLead.Id;
            lstTask.add(newTask);
        }
        insert lstTask;
    }
}

// 4
trigger LeadTrigger on Lead(before insert, before update) {
    for(Lead itemLead : Trigger.new) {
        if(itemLead.NumberOfEmployees < 1000) {
            itemLead.TamanhoEmpresa__c = 'Empresa pequena';
        }
    } 
}

// 5
trigger AccountTrigger on Account(before insert, before update) {
    for(Account item : Trigger.new) {
        if(item.CNPJ__c == null) {
            item.addError('Preencha o campo CNPJ');
        }
    }
}

// 6
trigger OpportunityTrigger on Opportunity(before insert, before update) {
    Account newAccount = new Account();

    for(Opportunity item : Trigger.new) {
        if(newAccount.Vip__c = true) {
            Decimal discount = item.Amount * 0.9;
            item.Amount = discount;
        }
    }
}