({
    // Importante o helper tambem conseguir manipular o component
	getOpportunities : function(component) {
		console.log('Estou sendo no helper - Invocação do Yrra =D');
        
        // Usando o método da classe APEX OpportunityC
        // como se fosse um atributo do component
        let action = component.get('c.getOpportunitiesNV');
        
        // Após executar o método no apex (Puxar os dados!)
        // Verifique a resposta do servidor (SUCCESS - ERROR - INCOMPLETE)
        action.setCallback(this, (response) => {
            // Response recebe um dos estados (SUCCESS - ERROR - INCOMPLETE)
            let state = response.getState();            
            
            if(state == "SUCCESS") { // Verifica se o estado é positivo
            	// Se entrar nessa condição, atribua
            	// o valor para opps
            	component.set("v.opps", response.getReturnValue());
            	console.log(response.getReturnValue());
        	}
        });
        
        // Enfileira e executa a função
        // Sem isso nunca iremos conseguir uma resposta
        $A.enqueueAction(action);
	}
})