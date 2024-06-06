package modelo;

public class Moneda {
    private int idDivisa;
    private String divisaSimbolo;
    private String divisaNombre;

    // Constructor, getters y setters
    public Moneda(int idDivisa, String divisaSimbolo, String divisaNombre) {
        this.idDivisa = idDivisa;
        this.divisaSimbolo = divisaSimbolo;
        this.divisaNombre = divisaNombre;
    }

    public int getIdDivisa() {
        return idDivisa;
    }

    public void setIdDivisa(int idDivisa) {
        this.idDivisa = idDivisa;
    }

    public String getDivisaSimbolo() {
        return divisaSimbolo;
    }

    public void setDivisaSimbolo(String divisaSimbolo) {
        this.divisaSimbolo = divisaSimbolo;
    }

    public String getDivisaNombre() {
        return divisaNombre;
    }

    public void setDivisaNombre(String divisaNombre) {
        this.divisaNombre = divisaNombre;
    }
}