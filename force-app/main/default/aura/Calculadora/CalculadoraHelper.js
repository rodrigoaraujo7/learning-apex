({
	sum : function(component) {
		var firstValue = +component.get("v.firstValue");
        var secondValue = +component.get("v.secondValue");
		var result = firstValue + secondValue;
        component.set("v.result", result);
	},
    
    sub : function(component) {
        var firstValue = component.get("v.firstValue");
        var secondValue = component.get("v.secondValue");
		var result = firstValue - secondValue;
        component.set("v.result", result);
    },
    
    mult : function(component) {
		var firstValue = component.get("v.firstValue");
        var secondValue = component.get("v.secondValue");
        var result = firstValue * secondValue;
        component.set("v.result", result);
	},
    
    div : function(component) {
        var firstValue = component.get("v.firstValue");
        var secondValue = component.get("v.secondValue");
		var result = firstValue / secondValue;
        component.set("v.result", result);
    }
})