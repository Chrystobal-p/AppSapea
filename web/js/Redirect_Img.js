/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function cargarImagen_anfibio(elemento){
    var file = elemento.files[0]; 
   var objHidden = document.formulario.txtnombre_foto;
    objHidden.value = file.name;
}

function countChars(obj){
    var maxLength = 1500;
    var strLength = obj.value.length;
    var charRemain = (maxLength - strLength);
    
    if(charRemain < 0){
        document.getElementById("charNum").innerHTML = '<span style="color: red;">You have exceeded the limit of '+maxLength+' characters</span>';
    }else{
        document.getElementById("charNum").innerHTML = charRemain+' characters remaining';
    }
}