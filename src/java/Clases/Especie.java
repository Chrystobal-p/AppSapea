/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

/**
 *
 * @author Neo Jigoku
 */
public class Especie {

    /**
     * @return the id_especie
     */
    public int getId_especie() {
        return id_especie;
    }

    /**
     * @param id_especie the id_especie to set
     */
    public void setId_especie(int id_especie) {
        this.id_especie = id_especie;
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the nombre_cientifico
     */
    public String getNombre_cientifico() {
        return nombre_cientifico;
    }

    /**
     * @param nombre_cientifico the nombre_cientifico to set
     */
    public void setNombre_cientifico(String nombre_cientifico) {
        this.nombre_cientifico = nombre_cientifico;
    }

    /**
     * @return the distribucion_geografica
     */
    public String getDistribucion_geografica() {
        return distribucion_geografica;
    }

    /**
     * @param distribucion_geografica the distribucion_geografica to set
     */
    public void setDistribucion_geografica(String distribucion_geografica) {
        this.distribucion_geografica = distribucion_geografica;
    }

    /**
     * @return the descripcion
     */
    public String getDescripcion() {
        return descripcion;
    }

    /**
     * @param descripcion the descripcion to set
     */
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    /**
     * @return the especie
     */
    public String getEspecie() {
        return especie;
    }

    /**
     * @param especie the especie to set
     */
    public void setEspecie(String especie) {
        this.especie = especie;
    }

    /**
     * @return the familia
     */
    public String getFamilia() {
        return familia;
    }

    /**
     * @param familia the familia to set
     */
    public void setFamilia(String familia) {
        this.familia = familia;
    }

    /**
     * @return the foto_especie
     */
    public String getFoto_especie() {
        return foto_especie;
    }

    /**
     * @param foto_especie the foto_especie to set
     */
    public void setFoto_especie(String foto_especie) {
        this.foto_especie = foto_especie;
    }
    private int id_especie;
    private String nombre;
    private String nombre_cientifico;
    private String distribucion_geografica;
    private String descripcion;
    private String especie;
    private String familia;
    private String foto_especie;
    
    //Constructores
    
    //Registro especie
    public Especie(String nombre, String nombre_cientifico, String distribucion_geografica, String descripcion, String especie, String familia, String foto_especie ){
        this.nombre=nombre;
        this.nombre_cientifico=nombre_cientifico;
        this.distribucion_geografica=distribucion_geografica;
        this.descripcion=descripcion;
        this.especie=especie;
        this.familia=familia;
        this.foto_especie=foto_especie;
    }
}
