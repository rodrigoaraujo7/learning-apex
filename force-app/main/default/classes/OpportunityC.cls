public class OpportunityC {
    @AuraEnabled
    public static List<Opportunity> getOpportunitiesNV() {
        return [SELECT Name, Amount, StageName, CloseDate 
                FROM Opportunity 
                WHERE StageName = 'Closed Won'
				Order By createdDate DESC LIMIT 5];
    }
}