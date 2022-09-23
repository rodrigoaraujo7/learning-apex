({
	handleSuccess : function(component, event, helper) {     
        var toastEvent = $A.get("e.force:showToast");
        toastEvent.setParams({
            'title' : 'Feito!',
            'message' : 'Lead criado com Sucesso!!! =D',
            'type' : 'success'
        });
        toastEvent.fire();
        
        var registroCriado = event.getParams();
        console.log(registroCriado.response.id);
        var navService = component.find("navService");
       
        var pageReference = {
            "type": 'standard__recordPage',         
            "attributes": {              
                "recordId": registroCriado.response.id,
                "actionName": "view",               
                "objectApiName":"Lead"              
            }        
        };
        
        console.log(pageReference);
        component.set("v.pageReference", pageReference);
        var redirect = component.get("v.pageReference");
        navService.navigate(redirect);       
	},
    
    handleReset: function(cmp) {
        //reseta os campos preechidos
        cmp.find('field').forEach(function(f) {
            f.reset();
        });
    },
    
    handleError: function(component, event) {
        //recebe o erro dado e manda para o console.log para analise
        var errors = event.getParams();
        console.log("response", JSON.stringify(errors));
    },
    
    handleSubmit: function(component, event, helper) {
        //onSubmit -> usado para realizar tratativa dos dados antes de enviar
        
        //para a ação de submit do formulário
        event.preventDefault();    
        //recebe no object o conjunto de valores que foram enviados para a variável fields
        var fields = event.getParam('fields');
        //insere valores estáticos para os campos LeadSource, Status antes de submeter os dados
        fields.LeadSource = 'Other';
        fields.Status = 'Open - Not Contacted';
        
        //realiza o submit de fato após as alterações
        component.find('recordEditForm').submit(fields);
    },
})