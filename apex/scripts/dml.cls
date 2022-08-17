// 1
List<Lead> lstLead = [SELECT Name, Company, State, Email 
                      FROM Lead
                      WHERE State = 'VA'
                      OR State = 'CA'
                      ORDER BY Name ASC];

system.debug(lstLead);

// 2
List<Lead> lstLead = [SELECT Name, Status FROM Lead
                      WHERE Name Like '%Co%'];

for(Lead item : lstLead) {
    if(item.Status == 'Working - Contacted') {
        system.debug(lstLead);
    } if (item.Status == 'Closed - Not Converted') {
        system.debug(lstLead);
    }
}

// 3
List<Contact> lstContact = [SELECT Name, Title, Phone, Account.Name
                            FROM Contact
                            WHERE Account.Name LIKE '%United%'
                            OR Account.Name LIKE '%Ltd%'];

system.debug(lstContact);

// 4
List<Account> lstAccount = [SELECT Name, Phone, Rating, CreatedDate,
                            (SELECT Name, Phone 
                            FROM Contacts
                            ORDER BY Name)
                            FROM Account
                            ORDER BY CreatedDate DESC];

// 5
List<Lead> lstLead = new List<Lead> { new Lead(LastName='Pato', Company='Space X', Status='Closed - Converted'),
    new Lead(LastName='Rodrigo',Company='Tesla',Status= 'Closed - Converted'),
    new Lead(LastName='Carol',Company='Microsoft',Status= 'Open - Not Contacted'),
    new Lead(LastName='Pedro',Company='Pinterest',Status= 'Open - Not Contacted'),
    new Lead(LastName='Joe',Company='Shein',Status= 'Closed - Converted')};

insert lstLead;

// 6
List<Account> lstAccount = new List<Account> { new Account(Name='Pato'),
    new Account(Name='Rodrigo'),
    new Account(Name='Carol'),
    new Account(Name='Pedro'),
    new Account(Name='Joe')};

insert lstAccount;

// 7 
List<Account> lstAccount = new List<Account> { new Account(Name='Pato'),
    new Account(Name='Rodrigo'),
    new Account(Name='Carol'),
    new Account(Name='Pedro'),
    new Account(Name='Rogerio'),
    new Account(Name='Joel'),
    new Account(Name='Henrique'),
    new Account(Name='Felipe'),
    new Account(Name='Henry'),
    new Account(Name='Joe')};

insert lstAccount;

// 8
List<Account> updateAccount = [SELECT Name, Phone, Rating
                               FROM Account
                               WHERE AnnualRevenue < 100
                               LIMIT 3];

for(Account item : updateAccount) {
    item.AnnualRevenue = 120;
    item.Phone = null;
    item.Rating = 'Cold';
    update item;
}

// 9
List<Account> lstAccount = [SELECT Name, Estado__c 
                            FROM Account
                            WHERE Estado__c = null];

for(Account item : lstAccount) {
    item.Estado__c = 'CE';
    update item;
}

// 10
List<Despesa__C> lstDespesa = [SELECT Id, Name 
                               FROM Despesa__C
                               WHERE Valor__c < 500
                               LIMIT 3];

for(Despesa__C item : lstDespesa) {
    delete item;
}

List<Projeto__C> lstProjeto = [SELECT Id, Name 
                               FROM Projeto__C
                               WHERE Valor__c < 500
                               LIMIT 3];

for(Projeto__C item : lstProjeto) {
    delete item;
}
