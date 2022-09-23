({
	handleSuccess : function(component, event, helper) {
        // $A => Nos permite usar uma biblioteca do Aura
        // Com isso, conseguiremos criar um alert de sucesso
        var toastEvent = $A.get("e.force:showToast");
		
        
        // Montar o alert (titulo, msg, type)
        // setParams => Atribui valores para a msg (obj = {})
        toastEvent.setParams({
            'title': 'Feito',
            'message': 'Conta criada com sucesso!! yrra =D',
            'type': 'success'
        });
    
        // Dispara a msg que acabamos de montar
        toastEvent.fire();
        
        // Console.log =D
        var createdRegister = event.getParams();
        console.log(createdRegister.response.id);
        
        var navService = component.find("navService");
     
        // Montando um object reference para direcionar o usuario
        var pageReference = {
            'type': 'standard_recordPage',
            'attributes': {
                'recordId': createdRegister.response.id,
                'actionName': 'view',
                'objectApiName': 'Account'
            }
        }
        
        component.set("v.pageReference", pageReference);
        
        var redirect = component.get("v.pageReference");
        
        navService.navigate(redirect);
    }
})