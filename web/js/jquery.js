/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
// efecto de rana
var html5_audiotypes={
"mp3": "audio/mpeg",
"mp4": "audio/mp4",
"ogg": "audio/ogg",
"wav": "audio/wav"
}

function createsoundbite(sound){
var html5audio=document.createElement('audio');
if (html5audio.canPlayType){ 
    //Comprobar soporte para audio HTML5
for (var i=0; i<arguments.length; i++){
var sourceel=document.createElement('source');
sourceel.setAttribute('src', arguments[i]);
if (arguments[i].match(/.(w+)$/i))
sourceel.setAttribute('type', html5_audiotypes[RegExp.$1]);
html5audio.appendChild(sourceel);
}
html5audio.load();
html5audio.playclip=function(){
html5audio.pause();
html5audio.currentTime=0;
html5audio.play(); 
}
return html5audio;
}
else{
return {playclip:function(){throw new Error('Su navegador no soporta audio HTML5');}}
}
}

//Inicializar sonidos
//var hover1 = createsoundbite('https://googledrive.com/host/0B3b6MFUtZc42dzVwTEdJM1JwZHc/silbido.mp3');
//var hover2 = createsoundbite('https://googledrive.com/host/0B3b6MFUtZc42dzVwTEdJM1JwZHc/claxon.mp3');

//Nótese que se pueden añadir ficheros con otras extensiones para mayor compatibilidad
var click1 = createsoundbite('audio/sonido_de_rana.mp3');


// validar textbox
function enviar(){
    var formulario = document.getElementById("myform");	
	var user= document.getElementById("username").value;
 var pass= document.getElementById("pass").value;
	if (user==!"" && pass==!""){
		alert("Enviando el formulario");
		formulario.submit();
		return true;
	} else if(user==="" && pass===""){
            alert("Falta Nombre de Usuario y Contraseña");
		
		return false;
	} else if(user!==""&& pass===""){
            alert("Falta Contraseña");
		return false;
        }else if(user===""&& pass!==""){
            alert("Falta Nombre de Usuario");
		return false;
        }
}


// Función para evitar que el formulario envíe campos vacios bloqueando el botón "registrarse".
var campos = ["campo1", "campo2", "campo3", "campo4", "campo5"];
function activar() {
var c = 0;
for(var i in campos){
i = parseInt(i);
var cadenaL = document.getElementById(campos[i]).value;
// hacemos un trim previo a la verificación
cadenaL = cadenaL.replace(/^\s+/g,'').replace(/\s+$/g,'');
if(cadenaL !== ""){
c++; // incrementamos c por cada campo que no está vacío
}
if(c === (5)){ // si c es = al total de los campos habilitamos el submit
document.getElementById('enviar_datos').disabled = false;
}else{ 
document.getElementById('enviar_datos').disabled = true;   
}
}
}
// agregamos el evento onkeyup dinamicamente a los campos requeridos
window.onload = function(){
    for(var e in campos){
    var elem = document.getElementById(campos[e]);
    if (elem.addEventListener){
    elem.addEventListener("keyup", function(){activar();}, false);
    
    }else{ // <IE9
        if (elem.attachEvent){
        elem.attachEvent ("onkeyup", function () {activar(elem);});    
        }
    }
    }
}

// redireccionar a Home.jsp
  function preguntar()
                       {
                           alert("Usted no posee una cuenta en Sapea"); 
                           setTimeout(function(){location.href = "Home.jsp";},0);
                           }   
// Redireccionar a home.jsp cuenta inhabilitada
 
 function aviso()
 {
     alert("Su cuenta a sido inhabilitada");
     setTimeout(function(){location.href = "Home.jsp";},0);
 }
//gif de carga
$(window).load(function() {
    $(".loader").fadeOut("slow");
});

             