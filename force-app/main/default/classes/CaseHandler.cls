public class CaseHandler {
    public static void caseBefore(List<Case> lstCase) {
        for(Case itemCase : lstCase) {
            if(itemCase.Type == null) {
                itemCase.Type = 'Other';
            }
        }
    }
}