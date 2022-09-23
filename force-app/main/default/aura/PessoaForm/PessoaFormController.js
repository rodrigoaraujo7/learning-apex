({
	onClick : function(component, event, helper) {
        //procurar através do find, um aura:id com o valor passado, get("v.value") acessa o valor do campo
        let nome = component.find("nome").get("v.value");
        let sobrenome = component.find("sobrenome").get("v.value");
        
        let txt = nome + " " + sobrenome;
        component.set("v.nomeCompleto", txt);
        component.set("v.visivel", true);
	}
})