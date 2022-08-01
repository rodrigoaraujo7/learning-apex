<h1 align="center">
  <br>
  A repository for learning Apex
  <br>
</h1>

<p align="center">
    <a href="https://developer.salesforce.com/docs/atlas.en-us.238.0.apexref.meta/apexref/apex_ref_guide.htm">Apex Reference Guide</a>
</p>

## Hello World!

```apex
// Remember to put ";"
System.debug('Hello World!');
```

## Variables

```apex
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

```apex
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

```apex	
integer firstNumber = 8, secondNumber = 10, thirdyNumber = 15;

boolean condition = firstNumber > secondNumber; // 8 > 10?
system.debug(condition); // This result is false

boolean otherCondition = firstNumber < secondNumber; // 8 < 10?
system.debug(otherCondition); // This result is true
```

## Conditional

```apex	
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

```apex	
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