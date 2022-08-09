List<Account> lstAccount = [SELECT Id, Name FROM Account WHERE AnnualRevenue < 100];

// When account have AnnualRevenue < 100, delete the record
for(Account item : lstAccount) {
    delete item;
}