public with sharing class OpportunityController {
    @AuraEnabled(cacheable=true)
    public static List<Opportunity> getOpportunities() {
        return [SELECT Id, Name, Amount, StageName, CreatedDate FROM Opportunity WHERE StageName = 'Negotiation/Review' ORDER BY CreatedDate DESC LIMIT 5];
    }

    @AuraEnabled(cacheable=true)
    public static List<Opportunity> getApprovationOpportunities() {
        return [SELECT Id, Name, Amount, StageName FROM Opportunity WHERE StageName = 'Aprovação Financeira' ORDER BY CreatedDate DESC];
    }
}
