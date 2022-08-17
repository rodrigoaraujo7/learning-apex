trigger AccountTrigger on Account(before insert, before update) {
    for(Account item : Trigger.new) {
        if(item.Phone == null) {
            // Return the error under page
            item.addError('Preencha o campo telefone');

            // Return the error under fild
            item.Phone.addError('Preencha o campo telefone');
        }
    }
}




// Criar uma trigger em Despesa
// que valida se o valor é maior que 200
// DESLIGUEM TODAS AS REGRAS DE VALIDACAO EM DESPESA
trigger DespesaTrigger on Despesa__c(before insert, before update) {
    for(Despesa__c item : Trigger.new) {
        if(item.Valor__c < 200) {
            item.addError('Coloque um valor acima de 200');
        }
    }
}