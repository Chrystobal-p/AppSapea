<%-- 
    Document   : index
    Created on : 18-09-2019, 19:43:17
    Author     : Krizz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>formulario</title>
        

<!--===============================================================================================-->
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="bootstrap/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="bootstrap/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="bootstrap/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
<script src="js/Redirect_Img.js" type="text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="js/codigo.js" type="text/javascript"></script>
<!--===============================================================================================-->
</head>
<body>
 
	<div class="container-contact100" style="background-image: url('images/fondo-encabezado-grande.jpg');">
		<div class="wrap-contact100">
                    <form action="ProcesoArchivo"name="formulario" method="post" class="contact100-form validate-form" enctype="multipart/form-data">
                        
				<span class="contact100-form-title">
					Formulario
				</span>

				<div class="wrap-input100 rs1-wrap-input100 validate-input" data-validate="Nombre es requerido">
					<span class="label-input100">Nombre genérico*</span>
					<input class="input100" type="text" name="nombre_generico" placeholder="Ingrese Nombre">
				</div>
				<div class="wrap-input100 rs1-wrap-input100 validate-input" data-validate="Nombre es requerido">
					<span class="label-input100">Nombre de la Especie*</span>
					<input class="input100" type="text" name="nombre_especie" placeholder="Ingrese Nombre de la Especie">
				</div>

				<div class="wrap-input100 rs1-wrap-input100 validate-input" data-validate = "nombre es requerido">
					<span class="label-input100">Nombre científico *</span>
					<input class="input100" type="text" name="nombre_cientifico" placeholder="Ingrese nombre Cientifico">
				</div>
                            
                              
				<div class="wrap-input100 rs1-wrap-input100 validate-input" data-validate="familia es requerida">
					<span class="label-input100">Familia *</span>
					<input class="input100" type="text" name="familia" placeholder="Ingrese Familia">
				</div>

				<div class="wrap-input100 rs1-wrap-input100 validate-input" data-validate = "Ingrese una distribución.">
					<span class="label-input100">Distribución Geográfica *</span>
					<input class="input100" type="text" name="distribucion" placeholder="Distribucion Geografica">
				</div>
                            

				    <div class=" file-input">
                                       <div class="btn blue-gradient btn-sm float-left">
                                             <span><i class="fas fa-cloud-upload-alt mr-2" aria-hidden="true"></i>Eliga una imagen</span>
                                             <input type="file" id="fichero" name="archivo" onchange="cargarImagen_anfibio(this)"/>
                                       </div>
                                        <img id="img" src="" width="100px" height="100px" hidden="true"/>
                                    </div>
                                <br> 
                                   <br>

				<div class="wrap-input100 validate-input" data-validate = "Descripción es requerida.">
					<span class="label-input100">Descripción</span>
                                        <textarea class="input100" name="descripcion" placeholder="..." onkeyup="countChars(this)"></textarea>
                                        <p id="charNum"></p>
				</div>

				<div class="container-contact100-form-btn">
					<div class="wrap-contact100-form-btn">
						<div class="contact100-form-bgbtn"></div>
                                                <input class="contact100-form-btn" type="submit" value="Guardar" name="proceso" disabled="true" id="btn_guardar"/>
					</div>
                                    <input type="hidden" name="txtnombre_foto" value=""/>
				</div>
			</form>
                    <iframe name="null" style="display: none;">
                    </iframe>
		</div>
<p id="texto"> </p><br/>   
		
	</div>



	<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
<script src="bootstrap/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="bootstrap/js/popper.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="bootstrap/select2/select2.min.js"></script>
<!--===============================================================================================-->
<script src="js/main.js"></script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>
<a href="index.jsp"></a>
</body>
</html>

