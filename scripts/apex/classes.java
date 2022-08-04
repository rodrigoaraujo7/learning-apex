// 1 - Criando uma classe publica chamada Person.
public class Person {
    // code block
}

// 1 - Criando um método chamado speak.
public class Person {
    // code block

    public void speak() {
        // code block
    }
}

// 1 - Criando um atributo dentro de uma classe publica chamada Person.
public class Person {
    public string name;
    public string lasName;
    public integer age;
}

// 1 - Criando um objeto que armazena um numero e manipula esse numero
// para adicionar mais um valor.
public class Person {
    public Integer age(Integer age) {
        return age + 1;
    }
}

// 3 - Gato
public class Gato {
    public string nome;
    public decimal peso;
    public string raca;

    public void miar() {
        system.debug(nome + ' Disse: MIAAAAAAU');
    }
    public void andar() {
        system.debug(nome + ' Está andando');
    }
    public void ronronar() {
        system.debug(nome + ' Está ronronar');
    }

    public void infoGato() {
        system.debug(nome);
        system.debug(peso);
        system.debug(raca);
    }
}

Gato gatinho = new Gato();
gatinho.nome = 'Gatão da massa';
gatinho.peso = 3.7;
gatinho.raca = 'Vira lata';

gatinho.miar();
gatinho.andar();
gatinho.ronronar();
gatinho.infoGato();

// 4 - Pizzaria
public class Pizzaria {
    public string pedir(String pizza) {
        if (pizza == 'Calabresa') {
            system.debug('Valor R$45,00');
            return '';
        } else if (pizza == '4 Queijos') {
            system.debug('Valor R$50,00');
            return '';
        }else if (pizza == 'Maria Bonita') {
            system.debug('Valor R$60,00');
            return '';
        } else {
            system.debug('Não possuimos essa Pizza');
            return '';
        }
    }
}

Pizzaria pizza = new Pizzaria();
pizza.pedir('Calabresa');
pizza.pedir('4 Queijos');
pizza.pedir('Maria Bonita');
pizza.pedir('sgbuyas');

// 5 - Conversor de medidas
public class calcMedida {
    public void medida(Decimal value) { // Pegando o valor em METROS!!!
        decimal milhanautica = value / 1852;
        system.debug('Medida em Milha Náutica: ' + milhanautica);

        decimal polegada = value * 39.37 ;
        system.debug('Medida em Polegada: ' + polegada);

        decimal pe = value * 3.281 ;
        system.debug('Medida em Pé: ' + pe);

        decimal jarda = value * 1.094;
        system.debug('Medida em Jarda: ' + jarda);

        decimal milha = value / 1609;
        system.debug('Medida em Milha: ' + milha);

        decimal milimetro = value * 1000 ;
        system.debug('Medida em Milimetro: ' + milimetro);

        decimal centimetro = value * 100 ;
        system.debug('Medida em Centimetro: ' + centimetro);

        decimal quilometro = value / 100 ;
        system.debug('Medida em Quilometro: ' + quilometro);
    }
}

CalcMedida metros = new CalcMedida();
metros.medida(10);

// 6 - Área Geométrica
public class AreaGeometrica {
    public void calcTriangulo(Decimal b, Decimal h) {
        decimal resultado = (b * h) / 2; // Base * Altura / 2
        system.debug('A area do triangulo é: ' + resultado);
    }
    
    public void calcQuadrado(Decimal l) {
        decimal resultado = l * l; // Lado²
        system.debug('A area do quadrado é: ' + resultado);
    }
    
    public void calcRetangulo(Decimal b, Decimal h) {
        decimal resultado = b * h; // Base * Altura
        system.debug('A area do retangulo é: ' + resultado);
    }
    
    public void calcLosangulo(Decimal dMaior, Decimal dMenor) {
        decimal resultado = dMaior * dMenor; // Diagonal maior * Diagonal Menor
        system.debug('A area do losangulo é: ' + resultado);
    }
    
    public void calcTrapezio(Decimal bMaior, Decimal bMenor, Decimal h) {
        decimal resultado = ((bMaior + bMenor) * h) / 2;
        system.debug('A area do trapezio é: ' + resultado);
    }
}

AreaGeometrica area = new AreaGeometrica();

area.calcTriangulo(10, 52);
area.calcQuadrado(20);
area.calcRetangulo(75, 35);
area.calcLosangulo(25, 18);
area.calcTrapezio(30, 25, 40);