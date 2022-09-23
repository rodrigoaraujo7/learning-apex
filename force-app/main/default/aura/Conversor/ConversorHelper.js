({
    seg : function(component) {
        var firstValue = component.get("v.firstValue");
		var result = firstValue * 3600;
        component.set("v.result", result);
    },
    
	min : function(component) {
		var firstValue = +component.get("v.firstValue");
		var result = firstValue * 60;
        component.set("v.result", result);
	},
    
	day : function(component) {
		var firstValue = +component.get("v.firstValue");
		var result = firstValue / 24;
        component.set("v.result", result);
	},
    
    week : function(component) {
		var firstValue = +component.get("v.firstValue");
		var result = firstValue / 168;
        component.set("v.result", result);
	}
})