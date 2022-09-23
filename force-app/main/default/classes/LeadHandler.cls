public class LeadHandler {
    // Methods to after triggers
    public static void leadAfter(List<Lead> listLead) {
        List<Task> lstTaskInsert = new List<Task>();
        for(Lead itemLead: listLead) { 
            Task newTask = new Task();
            newTask.subject = 'Entrar em contato!';
            newTask.WhoId = itemLead.Id;
            newTask.ActivityDate = System.today()+7;
            lstTaskInsert.add(newTask);
        }

        if(!lstTaskInsert.isEmpty()) {
            insert lstTaskInsert;
        }
    }
}