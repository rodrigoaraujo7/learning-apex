public class Gato {
    public string nome;
    public decimal peso;
    public string raca;

    public void miar() {
        system.debug(nome + 'Disse: MIAAAAAUU');
    }

    public void andar() {
        system.debug(nome + 'Esta andando');
    }

    public void ronronar() {
        system.debug(nome + 'Está ronronando');
    }

    public void infoGato() {
        system.debug(nome);
        system.debug(peso);
        system.debug(raca);
    }
}