public class LeadHandler {
    public static void validaTelefoneCelular(List<Lead> leadsQueVemDaTrigger) {
        for(Lead itemLead : leadsQueVemDaTrigger) {
            if(itemLead.Phone == null && itemLead.MobilePhone == null) {
                itemLead.addError('Favor preencher os campos!!!'); 
            }
        }
    }
}