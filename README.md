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

## Conditional

```apex	
integer firstNumber = 8, secondNumber = 10; thirdyNumber = 15

boolean condition = firstNumber > secondNumber; // 8 > 10?
system.debug(condition); // This result is false

boolean otherCondition = firstNumber < secondNumber; // 8 < 10?
system.debug(otherCondition); // This result is true

boolean twoConditions = (firstNumber > secondNumber) || (secondNumber < thirdyNumber) // 8 > 10 OR 10 < 15?
system.debug(twoConditions); // This result is true

boolean twoOtherConditions = (firstNumber < secondNumber) && (secondNumber > thirdyNumber) // 8 < 10 AND 10 > 15?
system.debug(twoConditions); // This result is false
```
