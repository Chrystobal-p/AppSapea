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
public class Usuario {

    
    
    // Atributos de la clase Usuario
    //La id de foto de perfil será 0 debido a que al comienzo no poseerá una.
    /**
     * @return the id_foto_perfil
     */
    public int getId_foto_perfil() {
        return id_foto_perfil;
    }

    /**
     * @param id_foto_perfil the id_foto_perfil to set
     */
    public void setId_foto_perfil(int id_foto_perfil) {
        this.id_foto_perfil = id_foto_perfil;
    }

    /**
     * @return the id_usuario
     */
    public int getId_usuario() {
        return id_usuario;
    }

    /**
     * @param id_usuario the id_usuario to set
     */
    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    /**
     * @return the id_perfil
     */
    public int getId_perfil() {
        return id_perfil;
    }

    /**
     * @param id_perfil the id_perfil to set
     */
    public void setId_perfil(int id_perfil) {
        this.id_perfil = id_perfil;
    }

    /**
     * @return the nombre_usuario
     */
    public String getNombre_usuario() {
        return nombre_usuario;
    }

    /**
     * @param nombre_usuario the nombre_usuario to set
     */
    public void setNombre_usuario(String nombre_usuario) {
        this.nombre_usuario = nombre_usuario;
    }

    /**
     * @return the contraseña
     */
    public String getContraseña() {
        return contraseña;
    }

    /**
     * @param contraseña the contraseña to set
     */
    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }

    /**
     * @return the correo
     */
    public String getCorreo() {
        return correo;
    }

    /**
     * @param correo the correo to set
     */
    public void setCorreo(String correo) {
        this.correo = correo;
    }

    /**
     * @return the ranking
     */
    public int getRanking() {
        return ranking;
    }

    /**
     * @param ranking the ranking to set
     */
    public void setRanking(int ranking) {
        this.ranking = ranking;
    }

    /**
     * @return the numero_contacto
     */
    public String getNumero_contacto() {
        return numero_contacto;
    }

    /**
     * @param numero_contacto the numero_contacto to set
     */
    public void setNumero_contacto(String numero_contacto) {
        this.numero_contacto = numero_contacto;
    }
private String  nombre_usuario;
private String contraseña;
private String correo;
private int ranking;
private int id_foto_perfil;
private String numero_contacto;
private int id_perfil;
private int id_usuario;


//Constructores de la clase

// Constructor para para instanciar
public Usuario(){}

//Constructor para el inicio de sesión
public Usuario(String nombre_usuario, String contraseña){
    this.nombre_usuario=nombre_usuario;
    this.contraseña=contraseña;

}
//Constructor para el Registtro
public Usuario (String nombre_usuario, String contraseña, String correo,int ranking,String numero_contacto){
       this.nombre_usuario=nombre_usuario;
       this.contraseña=contraseña;
       this.correo=correo;
       this.ranking=ranking;
       this.numero_contacto=numero_contacto;
    }

// Constructor para llamar a todos los usuario y/o administradores


public Usuario (int id_usuario,String nombre_usuario, String correo,int ranking,String numero_contacto){
    this.id_usuario = id_usuario;   
    this.nombre_usuario=nombre_usuario;
       this.correo=correo;
       this.ranking=ranking;
       this.numero_contacto=numero_contacto;
    }
// Constructor para llamar datos de usuario o admin
public Usuario (int id_usuario,String nombre_usuario, String contraseña, String correo,String numero_contacto){
    this.id_usuario = id_usuario;  
    this.nombre_usuario=nombre_usuario;
       this.contraseña=contraseña;
       this.correo=correo;
       this.numero_contacto=numero_contacto;
    }
}
