({
    // Component => Allows access the aura component
    // Event => Allows access the javascript
    // Helper => Allows access the helper functions
    doInit : function(component, event, helper) {
        helper.getOpportunities(component);
    }
})