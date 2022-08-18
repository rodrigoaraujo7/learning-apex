<h1 align="center">
  <img src="https://logodownload.org/wp-content/uploads/2020/04/salesforce-logo.png" alt="Logo" width="250">
  <br>
  A repository to learning Apex
  <br>
</h1>

<p align="center">
    <a href="https://developer.salesforce.com/docs/atlas.en-us.238.0.apexref.meta/apexref/apex_ref_guide.htm">Apex Reference Guide</a>
</p>

## Hello World!

```cls
// Remember to put ";"
System.debug('Hello World!');
```

## Variables

```cls
// Text
string name = 'Rodrigo';

// Number
integer age = 19;

// Decimal Number
decimal money = 200.90;

// True or False
boolean female = false;

// Date
date birthDate = 17072003;
```

## Math methods

```cls
integer firstNumber = 20, secondNumber = 50;
integer math = firstNumber + secondNumber; // addition
integer math = firstNumber - secondNumber; // subtraction
integer math = firstNumber * secondNumber; // multiplication
integer math = firstNumber / secondNumber; // division

system.debug(--firstNumber); // Decreasing a value first and read the variable last
system.debug(firstNumber--); // Read the variable first and decreasing a value last

system.debug(++firstNumber); // Increasing  a value
```

## Conditional in variables

```cls
integer firstNumber = 8, secondNumber = 10, thirdyNumber = 15;

boolean condition = firstNumber > secondNumber; // 8 > 10?
system.debug(condition); // This result is false

boolean otherCondition = firstNumber < secondNumber; // 8 < 10?
system.debug(otherCondition); // This result is true
```

## Conditional

```cls	
integer price = 0;

if ( price >= 30 && price <= 50 ) { // if price is between 30 and 50
    System.debug('I bought a t-shirts');
} else if ( price > 50 && price <= 80 ) { if else price is between 51 and 80
    System.debug('I bought two t-shirts');
} else if ( price > 90) { if else price is more than 90
    System.debug('I ended up leaving');
} else { if price is less 30
    System.debug('I havent money');
}
```

## Loops

```cls	
// loop with a fixed amount of repetitions
// syntax for loop
for (init_stmt; exit_condition; increment_stmt) {
    code_block
}

for (integer i = 0; i < 10; i++) { // one in one
    system.debug(i);
}

for (integer i = 2; i <= 44; i += 2) { // two in two
    system.debug(i);
}

// for a infinity repetitions
// syntax while loop
while (condition) {
    code_block
}

integer z = 0; // declaring variable out of loop
while (z <= 10) { // one in one
    system.debug(z);
    z++;
}

while (z <= 40) { // four in four
    system.debug(z);
    z += 4;
}

//syntax do while loop
do {
   code_block
} while (condition);

integer x = 0;
do { // one in one
    System.debug(x);
    x++;
} while (x <= 5);

do { // two in two
    System.debug(x);
    x += 2;
} while (x <= 12);
```

## List

```cls	
List<string> persons = new List<string>();
persons.add('Rodrigo');
persons.add('Nicolas');
system.debug(persons)

List<integer> listNumber = new List<integer> {
    8, 12, 27, 34, 41, 49
};
system.debug(listNumber)

List<string> persons = new string[5]; // Set 5 values at default
persons.add(0, 'Rodrigo'); // Adding a new index with string value
persons.set(1, 'Nicolas'); // Seting a string value at second index
persons[2] = 'Robert'; // Another method to set a new value

System.debug(persons); // Will be return (Rodrigo, Nicolas, Robert, null, null, null)
```

## Set

```cls
// Will be sort by smallest (1 - 10) (A - Z)
Set<Integer> listNumber = new Set<Integer> {
    12, 12, 32, 312, 3627189, 2
};

system.debug(listNumber); // Will be return 2, 12, 32, 312, 3627189
```

## Map

```cls
Map<string, string> colorCodes = new Map<string, string>(); // Declares variable

colorCodes.put('Light Blue', '#6FA4F2'); // Seting two values
colorCodes.put('Light Purple', '#884FBD'); // Seting others two values

System.debug(colorCodes); // Will be return {Light Blue=#6FA4F2, Light Purple=#884FBD}

String code = colorCodes.get('Light Blue');
System.debug(code); // Will be return #6FA4F2
```

## Object

```cls
// Creating a new object
public class Person {
  public string name;
  public string lastName;
  public integer age;
}

// Creating a new Person
Person firstPerson = new Person();

firstPerson.name = 'Rodrigo';
firstPerson.lastName = 'Araujo';
firstPerson.age = 19;

system.debug(firstPerson); // Will be return |DEBUG|Person:[age=19, lastName=Araujo, name=Rodrigo]

// Functions inside the object
public class Person {
  // code block
  
  // At now Let's create it as null as we don't need it to return anything!
  public void speak() {
    system.debug(name);
    system.debug(lastName);
    system.debug(age);
  }
}

firstPerson.speak();

// Simple calc
public class Calculator {
    // Notice that now I didn't put void, but integer, that's because now I need it to return something!
    // And in this case, we need pass the params.
    public Integer addition(Integer firstValue, Integer secondValue) {
        Integer result = firstValue + secondValue;
        
        // Return me the result
        return result;
    
        // IMPORTANT!!!!!!!
        // Note: Under the result, nothing else will be executed
    }
}

// Object with conditional
public Integer division(Integer firstValue, Integer secondValue) {
    if (secondValue == 0) {
        system.debug('Cant divide by zero!');
        return 0;
    } else {
        return firstValue / secondValue;
    }
}

Calculator newCalc = new Calculator();
Integer firstResult = newCalc.division(122, 0); // Will be return |DEBUG|Can't divide by zero!
```

## Static

```cls
// Because good practice to your system
// from now on we create methods using the *static*
// this will make your system much faster.

public class newCalc {
  public static void add(Integer n1, Integer n2) {
    integer result = n1 + n2;
    system.debug(result);
  }
}

newCalc.add(5, 10);
```

<h1 align="center">
  <br>
  SOQL
  <br>
</h1>

## Select & From

```soql
// SOQL is used to search, change, delete, insert your org records.
// Now we will do a simple data search

// Select for me, the records from the Id, Name and Phone fields.
// From the Account object

// Will be return all the records I requested above

SELECT Id, Name, Phone
FROM Account

SELECT Id, Name, Account.Name, Account.Id
  FROM Contact
```

## Where

```soql
// Now we will use where
// It is very simple, it adds a filtering system for us

SELECT Id, Name, Phone
  FROM Account
  WHERE AnnualRevenue > 1000
```

## Where And

```soql
// Use the AND when you need use more than one WHERE

SELECT Id, Name, Vip__c, AnnualRevenue
  FROM Account
  WHERE Vip__c = true
    AND AnnualRevenue > 500
```

## Like

```soql
// Here, I will search for an Account that has Rodrigo using the like
// %Rodrigo  - Ends with Rodrigo
// Rodrigo%  - Starts with Rodrigo
// %Rodrigo%  - Have Rodrigo

SELECT Id, Name
  FROM Account
  WHERE Name LIKE '%Rodrigo'
```

## Order by

```soql
// Order by is used to literally Order by Asc or Desc
// Asc - lowest => highest

SELECT Name, ValorDespesa__c
  FROM Despesa__c
  ORDER BY ValorDespesa__c Desc
```

## Group by

```soql
// Group duplicate records
// HAVING - Groups filter

SELECT Name, COUNT(Id)
  FROM Opportunity
  GROUP BY Name
  HAVING COUNT(Id) > 1
```

## Limit

```soql
// Limits my query to 10 records

SELECT Id, Name
  FROM Account
  LIMIT 10
```

## Count Sum Min Max Avg

```soql
SELECT Account.Name, COUNT(Id), SUM(Amount), MAX(Amount), MIN(Amount), AVG(Amount)
    FROM Opportunity
    GROUP BY Account.Name
```

## Subquery

```soql
// Selecting a new query, inside a query

SELECT Id, Name, 
(SELECT Id, Amount 
FROM Opportunities)
    FROM Account
```

<h1 align="center">
  <br>
  APEX WITH SOQL
  <br>
</h1>

## Read

```cls
List<Account> lstAccount = [SELECT Id, Name FROM Account];

system.debug(lstAccount);
```
## Insert

```cls
// With query (To filter the list )
List<Account> lstAccount = [SELECT Id, Name FROM Account WHERE AnnualRevenue < 100];
// Whitout query
List<Account> lstAccount = new List<Account>();

for(Account item : lstAccount) {
	Account acc = new Account();
	acc.Name = 'Nome Xpto';
	lstAccount.add(acc);
}

insert lstAccount;
```

## Update

```cls
// With query (To filter the list )
List<Account> lstAccount = [SELECT Id, Name FROM Account WHERE AnnualRevenue < 100];
// Whitout query
List<Account> lstAccount = new List<Account>();

for(Account item : lstAccount) {
	Account acc = new Account();
	acc.Name = 'Nome Xpto';
	lstAccount.add(acc);
}

update lstAccount;
```

## Delete

```cls
// With query to filter the list
List<Account> lstAccount = [SELECT Id, Name FROM Account WHERE AnnualRevenue < 100];

// When account have AnnualRevenue < 100, delete the record
delete lstAccount;
```

## Try Catch 👉 <a href="https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_classes_exception_methods.htm">Exception Class</a>

```cls
try {
    // Code block
  } catch(Exception type) { // Error case
    // Code block
}

try {
    integer calc = 10/0;
    system.debug('🟣 Calc done successfully: ' + calc);
} catch(MathException CalcError) {
    system.debug('🔴 Error in calc!');
}
```

<br>
<div align="center">
  <h1>Main order of executions</h1>
  <img src="https://gcdnb.pbrd.co/images/ouh55yd0h79t.png?o=1" />
</div>
<br>

## Trigger

```cls
// Trigger structure
trigger TriggerName on ObjectName(time) {
    // Code block
}

// Now we will create a real trigger
// After save, active the trigger
trigger OpportunityTrigger on Opportunity(before insert) {
    System.debug('actived trigger');
}
```

## Class with Trigger

```cls
// Class File (LeadHandler.cls)
public class LeadHandler {
    // Methods to before triggers
    public static void leadBefore(List<Lead> listLead) {
        // Phone and Cellphone fields validation
        for(Lead itemLead : listLead) {
            if(itemLead.Phone == null && itemLead.MobilePhone == null) {
                itemLead.addError('Preencha o campo Telefone'); 
            }
        }

        // CPF field validation
        for(Lead itemLead : listLead) {
            if(itemLead.CPF__c == null) {
                itemLead.addError('Preencha o campo CPF');
            }
        }

        // Sets "small company" when entering condition
        for(Lead itemLead: listLead) {
            if(itemLead.NumberOfEmployees < 1000) {
                itemLead.TamanhoEmpresa__c = 'Empresa pequena';
            }
        }
    }
    
    // Methods to after triggers
    public static void leadAfter(List<Lead> listLead) {
        // When Annual Revenue > 50000 Create new Task
        List<Task> lstTaskInsert = new List<Task>();
        for(Lead itemLead: listLead) {
            if(itemLead.AnnualRevenue > 50000) {
                Task newTask = new Task();
                newTask.subject = 'Create new task';
                lstTaskInsert.add(newTask);
            }
        } // insert lstTaskInsert; 
        // Will be inserted outside the For for good practices
        
        // If lstTaskInsert isn't empty insert the task
        if(!lstTaskInsert.isEmpty()) {
            insert lstTaskInsert;
        }
    }
}
```
```cls
// Creating a trigger and put the times
trigger LeadTrigger on Lead(before insert, before update, after insert, after update) {
    if(Trigger.isBefore) { // Time when this method will be function
        if(Trigger.isInsert) {
            LeadHandler.leadBefore(Trigger.new); // Executing the method
        } else if(Trigger.isUpdate) {
            LeadHandler.leadBefore(Trigger.new);
        }
    } else if(Trigger.isAfter) {
        if(Trigger.isInsert) {
            LeadHandler.leadAfter(Trigger.new);
        } else if(Trigger.isUpdate) {}
    }
}
```

## Test
```cls
// Calculator.cls
public class Calculator {
    public static Integer addition(Integer firstValue, Integer secondValue) {
        Integer result = firstValue + secondValue;        
        return result;
    }

    public static Integer subtract(Integer firstValue, Integer secondValue) {
        Integer result = firstValue - secondValue;
        return result;
    }
}
```
```cls
// CalculatorTest.cls

// Now, we will test the code.
// In the other file, let's create another class 
// To see if the code is working
@isTest
public class CalculatorTest {
	@isTest
    public static void testAddMethod() {
        Integer result = Calculator.addition(1, 1);
	// Case the result isn't 2, return message error
        system.assert(result == 2, '🔴 Unexpected result');
    }
}
```
