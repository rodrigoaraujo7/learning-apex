public class AccountListC {
    @AuraEnabled
    public static List<Account> getAccountList() {
        return [SELECT Name, OwnerId, Phone, CreatedDate FROM Account Order by Name desc LIMIT 5];
    }
}