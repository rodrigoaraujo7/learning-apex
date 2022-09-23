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

// Exercicio 5
list<String> letters = new String[6];
letters[0]='A';
letters[1]='B';
letters[2]='C';
letters[3]='D';
letters[4]='E';
letters[5]='F';

string faca = (letters[5]+letters[0]+letters[2]+letters[0]);
string baba = (letters[1]+letters[0]+letters[1]+letters[0]);
string fada = (letters[5]+letters[0]+letters[3]+letters[0]);
string acabada = (letters[0]+letters[2]+letters[0]+letters[1]+letters[0]+letters[3]+letters[0]);
system.debug(faca + ' ' + baba + ' ' + fada + ' ' + acabada);

// Exercicio 6
Map<String, String> empresa = new Map<String, String>();
empresa.put('empresa', 'Mamaco Corp');
empresa.put('ceo', 'Romero Brito');
empresa.put('valor', '8000000');
empresa.put('CNPJ', '1233210001-99');

String empresaNome = empresa.get('empresa');
String empresaCeo = empresa.get('ceo');
String empresaValor = empresa.get('valor');

system.debug('A empresa ' + empresaNome + ' alcançou o valor de mercado de R$'+ empresaValor + '. O CEO '+ empresaCeo + ' declarou ser o primeiro passo para dominar o mundo');
