public class AreaGeometrica {
    // Area, Base, Altura, Lado
    decimal a = 0, b = 10, h = 24, l = 0;
    // Diagonal menor, Diagonal Maior, Base menor, Base Maior
    decimal dMenor = 0, dMaior = 0, bMenor = 0, bMaior = 0; 
	
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
        decimal resultado = dMaior * dMenor; //Diagonal maior * Diagonal Menor
        system.debug('A area do losângulo é: ' + resultado);
    }

    public void calcTrapezio(Decimal bMaior, Decimal bMenor, Decimal h) {
        decimal resultado = ((bMaior + bMenor) * h) / 2; //Base maior + Base menor * Altura / 2
        system.debug('A area do triangulo é: ' + resultado);
    }
}