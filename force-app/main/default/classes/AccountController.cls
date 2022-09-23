public with sharing class AccountController {
    // Method to return account list
    // AccountController.getListAccount

    @AuraEnabled(cacheable=true)
    public static List<Account> getListAccount() {
        return [SELECT Id, Name, Phone, Rating FROM Account ORDER BY CreatedDate desc LIMIT 5];
    }
}
