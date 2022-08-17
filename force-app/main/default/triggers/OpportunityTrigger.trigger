trigger OpportunityTrigger on Opportunity(before insert) {
    for(Opportunity itemOpp : Trigger.new) {
        if(itemOpp.Amount > 500000) {
            itemOpp.StageName = 'Negotiation/Review';
        }   
    }
}