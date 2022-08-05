// Exercicios Lista - 1
List<string> favoriteBands = new List<string> {
    'Beatles', 'Queens', 'Pink Floyd'
};
// removendo itens da lista (Pink floyd - Queens)
favoriteBands.remove(2);
favoriteBands.remove(1);

// adicionando itens na lista
favoriteBands.add('Nirvana');
favoriteBands.add('AC/DC');
favoriteBands.add('U2');

system.debug(favoriteBands);

// Exercicio Lista - 2
List<string> values = new string[8]; // Definindo 8 indices como padrão, atualmente todos estão nulos!

values.add(2, 'Valor ao index 3'); // Adicionando um valor ao index 3
values[3] = 'Valor ao index 4'; // Setando um valor ao index 4
values.remove(3); // Removendo o index 4

system.debug(values);

// Exercicio 3
List<integer> counter = new List<integer>();

for (integer i = 0; i <= 20; i += 2) {
    counter.add(i);
    // system.debug(i);
}

system.debug(counter);



// Exercicio 1
for (integer j = 33; j <= 333; i += 3) {
    system.debug(j);
}

// Exercicio 2
integer z = 0;
while (z <= 100) {
    system.debug(z);
    z += 10;
}

// Exercicio 3
integer x = 70;
do {
    system.debug(x);
    x--;
} while (x <= 70 && x >= 0);

// Exercicio 4
Map<integer, string> series = new Map<integer, string>();

// Declarando uma id de forma aleatoria para cara index
series.put(1, 'Peaky Blinders');
series.put(5, 'Heartland');
series.put(4, 'Stranger Things');
series.put(6, 'Greys Anatomy');
series.put(2, 'Suits');
series.put(3, 'South Park');
series.put(8, 'One Piece');
series.put(7, 'Rick and Morty');

system.debug(series);

//Exercicio 5
// FIXME:
List<string> letter = new List<string> {
    'A', 'B', 'C', 'D', 'E', 'F' // lista de letras
};

string letters = 'ABCDEF'; //  variavel que armazena letras
string randomWord = ''; // Varial que armazena uma palavra aleatoria começando com um valor vazio

// while que não entendo pois peguei do google 🥳
while (randomWord != 'FACA' || randomWord != 'BABA' || randomWord != 'FADA' || randomWord != 'ACABADA') {
    Integer idx = Math.mod(Math.abs(Crypto.getRandomInteger()), letters.length());
    randomWord += letters.substring(idx, idx+1);
} system.debug(randomWord);

// TODO: tentar outros métodos, e lembrar o que são esses outros métodos
// while (randomWord.length() <= 7) {
//     Integer idx = Math.mod(Math.abs(Crypto.getRandomInteger()), letters.length());
//     randomWord += letters.substring(idx, idx+1);
//     if (randomWord == 'FACA' || randomWord == 'BABA' || randomWord == 'FADA' || randomWord == 'ACABADA') {
//         system.debug(randomWord);
//     }
// }

// if (randomWord == 'FACA' || randomWord == 'BABA' || randomWord == 'FADA' || randomWord == 'ACABADA') {
//     system.debug(randomWord);
// } else {
//     while (randomWord.length() <= 7) {
//         Integer idx = Math.mod(Math.abs(Crypto.getRandomInteger()), letters.length());
//         randomWord += letters.substring(idx, idx+1);
//     }
// }