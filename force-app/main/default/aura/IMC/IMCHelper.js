({
	calc : function(component) {
		var weight = +component.get("v.firstValue");
        var length = +component.get("v.secondValue");
		var result = (weight / (length * length)).toFixed(2);
              
        if(result < 18.5) {
            component.set("v.result", "Baixo peso");
        } else if(result >= 18.5 && result < 25) {
            component.set("v.result", "Normal");
        } else if(result >= 25 && result < 30) {
        	component.set("v.result", "Sobrepeso");
        } else if(result > 30) {
            component.set("v.result", "Obesidade");
        }
	}
})