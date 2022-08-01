integer firstNumber = 8, secondNumber = 10, thirdyNumber = 15;

boolean condition = firstNumber > secondNumber; // 8 > 10?
system.debug(condition); // This result is false

boolean otherCondition = firstNumber < secondNumber; // 8 < 10?
system.debug(otherCondition); // This result is true

boolean twoConditions = (firstNumber > secondNumber) || (secondNumber < thirdyNumber); // 8 > 10 OR 10 < 15?
system.debug(twoConditions); // This result is true

boolean twoOtherConditions = (firstNumber < secondNumber) && (secondNumber > thirdyNumber); // 8 < 10 AND 10 > 15?
system.debug(twoOtherConditions); // This result is false