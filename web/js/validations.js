//Función para verificar que el nombre de usuario no posea espacio en blanco
function verificar_username(){
    var username = document.getElementById('campo1').value;
    var espacios = false;
var cont = 0;
 
while (!espacios && (cont < username.length)) {
  if (username.charAt(cont) === " ")
    espacios = true;
  cont++;
}
if (espacios) {
  alert ("El nombre de usuario no puede contener espacios en blanco");
  document.getElementById('campo1').focus();
  document.getElementById('campo2').disabled=true;
  document.getElementById('campo1').style.backgroundColor="#FADBD8";
  document.getElementById('campo1').style.borderColor="red";
  return false;
}else{
    document.getElementById('campo1').style.backgroundColor="#D5F5E3";
  document.getElementById('campo1').style.borderColor="green";
    document.getElementById('campo2').disabled=false;
}
}


// Función para verificar que la contraseña no posea espacios en blanco
function verificar_password(){
    var p1 = document.getElementById('campo2').value;
    var espacios = false;
var cont = 0;
 
while (!espacios && (cont < p1.length)) {
  if (p1.charAt(cont) === " ")
    espacios = true;
  cont++;
}
if (espacios) {
  alert ("La contraseña no puede contener espacios en blanco");
  document.getElementById('campo2').focus();
  document.getElementById('campo3').disabled=true;
    document.getElementById('campo2').style.backgroundColor="#FADBD8";
  document.getElementById('campo2').style.borderColor="red";
  return false;
}else{
        document.getElementById('campo2').style.backgroundColor="#D5F5E3";
  document.getElementById('campo2').style.borderColor="green";
    document.getElementById('campo3').disabled=false;
}
}


//Función para validar que las claves ingresadas sean iguales.
function verificar_passwords() {
    var password1 = document.getElementById('campo2').value;
    var password2 = document.getElementById('campo3').value;
    if(password1!== password2){
          alert("Las contraseñas no coinciden.");
          document.getElementById('campo3').focus();
            document.getElementById('campo3').style.backgroundColor="#FADBD8";
  document.getElementById('campo3').style.borderColor="red";
    }else{
            document.getElementById('campo3').style.backgroundColor="#D5F5E3";
  document.getElementById('campo3').style.borderColor="green";
    }
}


function validar_username(){ 
    var username = document.getElementById('campo1').value;
  var data = {nombreusuario:username};
    $.post("consulta_username", data, function(res, est, jqXHR){
        alert(res);
    });
 }
 
function verificadores(){
    verificar_username();
            validar_username();
}
 function validar_correo(){ 
    var email = document.getElementById('campo4').value;
  var data = {correo:email};
    $.post("consulta_correo", data, function(res_correo, est, jqXHR){
        alert(res_correo);
    });
 }
 
  function validar_contacto(){ 
    var contacto = document.getElementById('campo5').value;
  var data = {telefono:contacto};
    $.post("consulta_contacto", data, function(res_contact, est, jqXHR){
        alert(res_contact);
    });
 }

