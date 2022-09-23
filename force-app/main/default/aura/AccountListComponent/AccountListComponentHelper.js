({
	getAccounts : function(component) {
		console.log('Estou sendo executado - Ivocação do Yrra =D');
        let action = component.get('c.getAccountList');
        
        action.setCallback(this, (response) => {
            let state = response.getState();
            
            if(state == 'SUCCESS') {
            	component.set('v.acc', response.getReturnValue());
        	}
        })
        
        $A.enqueueAction(action)
	}
})