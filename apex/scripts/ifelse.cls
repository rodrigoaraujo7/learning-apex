// exercicio 1
integer n1 = 0;

if ( n1 > 10 ) {
    System.debug('É maior do que 10!');
} else {
    System.debug('É menor do que 10!');
}

// exercicio 2
// pegando a variavel do exercicio a cima!!!
if (n1 < 0) {
    System.debug('Numero negativo!');
} else {
    System.debug('Numero positivo!');
}

// exercicio 3
integer firstValue = 7, secondValue = 10;

if ( firstValue > secondValue && firstValue != secondValue ) {
    System.debug('Ordem crescente: ' + secondValue + ', ' + firstValue);
} else if ( firstValue < secondValue && firstValue != secondValue ) {
    System.debug('Ordem crescente: ' + firstValue + ', ' + secondValue);
} else {
    System.debug('Defina valores diferentes');
}

// exercicio 4
// pegando a variavel do exercicio a cima!!!
if ( firstValue > secondValue && firstValue != secondValue ) {
    System.debug('Maior numero: ' + firstValue);
} else if ( firstValue < secondValue && firstValue != secondValue ) {
    System.debug('Maior numero: ' + secondValue);
} else {
    System.debug('Defina valores diferentes');
}

// exercicio 5
integer birthDate = 2003, year = 2022;
integer age = year - birthDate;

if ( age >= 18 ) {
    System.debug('Poderá votar esse ano!');
} else {
    System.debug('Não poderá votar esse ano!');
}

// exercicio 6
// pegando a variavel do exercicio 3!!!
integer totalValue = firstValue + secondValue;
integer average = totalValue / 2;

if ( average >= 6 ) {
    System.debug('Nota final acima da média!');
} else {
    System.debug('Nota final abaixo da média!');
}

// exercicio 7
// pegando a variavel do exercicio 3!!!
if ( firstValue == secondValue ) {
    System.debug('Números iguais!');
} else if ( firstValue > secondValue ) {
    System.debug('Primeiro é maior!');
} else if ( firstValue < secondValue ) {
    System.debug('Segundo é maior!');
}

// exercicio 8
string nameProduct = 'Shampoo';
integer amountProduct = 3, discount = 0;
decimal priceProduct = 12.50, totalProductValue = amountProduct * priceProduct;

if ( amountProduct <= 5 ) {
    decimal discount = totalProductValue * 2/100;
    decimal newTotalProductValue = totalProductValue - discount;
    System.debug('Você recebeu um desconto de 2%. O valor total da sua compra ficou: ' + newTotalProductValue);
} else if ( amountProduct > 5 && amountProduct <= 10 ) {
    decimal discount = totalProductValue * 3/100;
    decimal newTotalProductValue = totalProductValue - discount;
    System.debug('Você recebeu um desconto de 3%. O valor total da sua compra ficou: ' + newTotalProductValue);
} else {
    decimal discount = totalProductValue * 10/100;
    decimal newTotalProductValue = totalProductValue - discount;
    System.debug('Você recebeu um desconto de 10%. O valor total da sua compra ficou: ' + newTotalProductValue);
}

// exercicio 9
integer numberAccount = 728;
decimal balance = 1280.75, debit = 152, credit = 77.80;
decimal currentBalance = balance - debit + credit;

if ( currentBalance >= 0 ) {
    System.debug('Saldo positivo! 🥳');
} else {
    System.debug('Saldo Negativo! 😒');
}