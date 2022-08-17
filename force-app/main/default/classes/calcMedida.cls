public class calcMedida {
    public void medida(Decimal value) { // Pegando um valor em METROS!!!
        decimal milhanautica = value / 1852;
        system.debug('Medida em Milha náutica: ' + milhanautica);
        
        decimal polegada = value * 39.37;
        system.debug('Medida em Polegada: ' + polegada);

        decimal pe = value * 3.281;
        system.debug('Medida em Pé: ' + pe);

        decimal jarda = value * 1.094;
        system.debug('Medida em Jarda: ' + jarda);

        decimal milha = value / 1609;
        system.debug('Medida em Milha: ' + milha);

        decimal milimetro = value * 1000;
        system.debug('Medida em Milimetro: ' + milimetro);

        decimal centimetro = value * 100;
        system.debug('Medida em Centimetro: ' + centimetro);

        decimal quilometro = value / 100;
        system.debug('Medida em Centimetro: ' + quilometro);       
    }
}