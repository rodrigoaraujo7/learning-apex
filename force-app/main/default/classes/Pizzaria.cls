public class Pizzaria {
    public String pedir(String pizza) {
        if (pizza == 'Calabresa') {
            system.debug('Valor R$45,00');
            return 'Valor R$45,00';
        } else if (pizza == '4 Queijos') {
            system.debug('Valor R$50,00');
            return 'Valor R$50,00';
        } else if (pizza == 'Maria Bonita') {
            system.debug('Valor R$60,00');
            return 'Valor R$60,00';
        } else {
            system.debug('Não possuimos essa Pizza');
            return 'Não possuimos essa Pizza';
        }
    }
}