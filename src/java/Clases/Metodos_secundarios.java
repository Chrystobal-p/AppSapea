/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.io.IOException;
import static java.lang.System.out;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Neo Jigoku
 */
public class Metodos_secundarios {
    public static int validar_textbox_login( Usuario pf){
        int num=0;
          if(pf.getNombre_usuario().equals("") && pf.getContraseña().equals("")){
             num=1; 
            }
          else if(pf.getNombre_usuario().equals("")&&pf.getContraseña()!=null){
                num=2;
            }
          else if(pf.getContraseña().equals("")&&pf.getNombre_usuario()!=null){
                 num=3;
            }
             return num;
    }
    public static String retornar_mensaje_login(int n){
        String msj="";
             switch(n){
                    case 1:
                        msj="Ingrese un usuario y una contraseña";
                        break;
                         case 2:
                        msj="Ingrese un usuario";
                        break;
                         case 3:
                        msj="Ingrese una contraseña";
                        break;
                        case 4:
                        msj="Usuario y/o contraseña incorrectos";
                        break;
                        case 5:
                            msj="ACCESO DENEGADO, ¡INICIE SESIÓN!"; 
                        break;    
                        case 6:
                        msj="ACCESO DENEGADO, USTED NO TIENE PERMISO PARA INGRESAR";
                        break;
                }
             return msj;
    }
    public static String retornar_mensaje_registro(int numero){
        String msj="";
                    switch (numero) {
                            case 1:
                               msj= "Nombre de usuario, correo y/o número de contacto ya registrados";
                                break;
                            case 2:
                                msj="¡Registro completo!";
                                break;
                            case 3:
                                msj="Problemas al realizar registro";
                                break;
                                case 4:
                                msj="Datos actualizados con éxito";
                                break;
                                case 5:
                                msj="Problemas al realizar la actualización";
                                break;
                    }
                    return msj;    
    }

public String retornar_extension(String nomb){
    String extension="";
int i = nomb.lastIndexOf('.');
if (i > 0) {
    extension = "."+nomb.substring(i+1);
    return extension;
}else{
    return extension;
}
} 

}
