public class NovoLead {    
    public void leadName(String insertLastName, String insertLastName) {
        Lead newLead = new Lead();
        newLead.LastName = insertLastName;
        insert newLead;
        system.debug(newLead);
    }
    public void leadCompany(String insertCompany) {
        Lead newLead = new Lead();
        newLead.Company = insertCompany;
        insert newLead;
        system.debug(newLead);
    }
    public void leadStatus(String insertStatus) {
        Lead newLead = new Lead();
        newLead.Status = insertStatus;
        insert newLead;
        system.debug(newLead);
    }
}

NovoLead lead = new NovoLead();
lead.leadName('TIAGO', 'Ramos');
lead.leadCompany('Space X');
lead.leadStatus('Open - Not Contacted');