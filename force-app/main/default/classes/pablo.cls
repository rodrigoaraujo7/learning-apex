public class pablo {
    public static Lead criarLead() {
        Lead newLead = new Lead();

        // required fields
        newLead.Company = 'Tesla';
        newLead.Status = 'Working - Contacted';
        newLead.LastName = 'Patolino';
        newLead.CPF__c = '123'; 

        return newLead;
    }
}