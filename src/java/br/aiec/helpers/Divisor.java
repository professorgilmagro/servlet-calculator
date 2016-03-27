/*
 * Classe responsável por realizar as operações de divisão e classificação
 * da fração com relação ao seu tipo
 */
package br.aiec.helpers;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.ArrayList;

/**
 *
 * @author Grupo GRA (Anne, Gilmar e Ricardo) <aiec.br>
 */
public final class Divisor {
    private Double numerador;
    private Double divisor;
    private Double result;
    private ArrayList<String> warnings = new ArrayList<String>();
    
    /**
     * Construtor da classe. 
     * Pemite instanciar passando os valores (String) a serem calculados
     * 
     * @param numerador
     * @param divisor 
     */
    public Divisor(String numerador, String divisor){
        this.setNumerador(numerador);
        this.setDivisor(divisor);
        this.calculate();
    }
    
    /**
     * Construtor da classe. 
     * Pemite instanciar passando os valores (Doubles) a serem calculados
     * 
     * @param numerador
     * @param divisor 
     */
    public Divisor(Double numerador, Double divisor){
        this.setNumerador(numerador);
        this.setDivisor(divisor);
        this.calculate();
    }
    
    /**
     * Retorna o numerador informado pelo utilizador
     * 
     * @return Double 
     */
    public Double getNumerador() {
        return numerador;
    }
    
    /**
     * Define divisor a ser utilizado no cálculo
     * @param numerador
     */
    protected void setNumerador(double numerador) {
        this.numerador = numerador;
    }
    
     /**
     * Define o numerador a ser utilizado no cálculo com base numa string
     * @param numerador
     */
    protected void setNumerador(String numerador) {
        if ( numerador.isEmpty() ) {
            this.warnings.add("Valor do numerador não informado.");
            return ;
        }
        
        try {
            this.numerador = Double.parseDouble(numerador) ;
        } catch (Exception e) {
            this.numerador = 0.0;
            this.warnings.add("Valor do numerador inválido.");
        }
    }
    
    /**
     * Retorna o divisor informado pelo utilizador
     * 
     * @return Double 
     */
    public Double getDivisor() {
        return divisor;
    }
    
    /**
     * Define divisor a ser utilizado no cálculo
     * @param divisor
     */
    protected void setDivisor(double divisor) {
        this.divisor = divisor;
    }
    
    /**
     * Define o divisor a ser utilizado no cálculo com base numa string
     * @param divisor
     */
    protected void setDivisor(String divisor) {
         if ( divisor.isEmpty() ) {
            this.warnings.add("Valor do divisor não informado.");
            return ;
        }
         
        try {
            this.divisor = Double.parseDouble(divisor) ;
        } catch (Exception e) {
            this.divisor = 0.0 ;
            this.warnings.add("Valor do divisor inválido.");
        }
    }
    
    /**
     * Retorna os avisos disparados pela operação
     * 
     * @return ArrayList 
     */
    public ArrayList<String> getWarnings() {
        return warnings;
    }
    
    /**
     * Retorna o valor do resultado da fração
     * 
     * @return Double 
     */
    public Double getResult(){
        if ( result == null ) {
            this.calculate();
        }
        
        return result;
    }
    
    /**
     * Calcula a divisão com base nos valores informados
     * 
     * @return Boolean
     */
    protected Boolean calculate(){
        if ( ! this.getWarnings().isEmpty() ) {
            this.result = 0.0;
            return false;
        }
        
        if( this.getDivisor() == 0.0 ) {
            this.warnings.add("Error! Divisão por Zero.");
            this.result = 0.0;
            return false;
        }
        
        BigDecimal bigNumerador = new BigDecimal(this.getNumerador().toString());
        BigDecimal bigDivisor = new BigDecimal(this.getDivisor().toString());

        this.result = bigNumerador.divide(bigDivisor, 16, RoundingMode.HALF_UP).doubleValue();
        return true ;
    }
    
    /**
     * Retorna a categoria da operação com base nos valores de numerador e divisor
     * 
     * @return double
     */
    public String getCategory(){
        if ( ! this.getWarnings().isEmpty() ) {
            return "" ;
        }
        
        //Unitária: o numerador é igual a 1 e o denominador é um inteiro positivo.
        if ( this.getNumerador() == 1 && this.getDivisor() > 0 && this.getDivisor() % 1 == 0 ) {
            return "Unitária";
        }
        
        //Própria: O numerador é menor que o denominador
        if ( this.getNumerador() < this.getDivisor() ) {
            return "Própria" ;
        }
        
        //Aparente: O numerador é múltiplo ao denominador
        if ( this.getNumerador() % this.getDivisor() == 0 ) {
            return "Aparente" ;
        }
        
        //Irredutível: o numerador e o denominador são primos entre si, não permitindo simplificação
        if ( this.isPrimeNumbers() ) {
            return "Irredutível";
        }
        
        //Equivalente: Mantêm a mesma proporção de outra fração
         if ( this.isEquivalentType() ) {
            return "Equivalente";
        }
        
        // Imprópria: O numerador é maior ou igual ao denominador
        return "Imprópria" ;
    }
    
    /**
     * Verifica se os números informados são considerados equivalentes
     * 
     * @return 
     */
    public Boolean isEquivalentType(){
        if(this.getDivisor() % 1 == 0 && this.getDivisor() % 1 == 0){
            return this.mdc(this.getNumerador().intValue(), this.getDivisor().intValue()) == 1 ;
        }
        
        return false;
    }
    
    /**
     * Verifica se os números informados são primos entre si
     * Dois números são primos entre si se o MDC deles for 1.
     * 
     * @return 
     */
    public Boolean isPrimeNumbers(){
        // Verifica se os números são inteiros
        if(this.getDivisor() % 1 == 0 && this.getDivisor() % 1 == 0){
            return this.mdc(this.getNumerador().intValue(), this.getDivisor().intValue()) == 1 ;
        }
        
        return false;
    }
    
    /**
    * Calcula o MDC entre dois números
    * 
     * @param a
     * @param b
     * 
     * @return int
    */
    public int mdc(int a, int b) {
        if (b == 0)
            return a;
        else
            return mdc(b, a % b);
    }
}