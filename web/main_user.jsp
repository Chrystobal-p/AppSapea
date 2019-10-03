<%-- 
    Document   : main_user
    Created on : 31-08-2019, 17:54:29
    Author     : Neo Jigoku
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
response.setHeader( "Pragma", "no-cache" );
response.addHeader( "Cache-Control", "must-revalidate" );
response.addHeader( "Cache-Control", "no-cache" );
response.addHeader( "Cache-Control", "no-store" );
response.setDateHeader("Expires", 0);
%>
<html>
    <head>
              <!-- Required meta tags always come first -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">

    <!-- Cargando fuentes -->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,700italic' rel='stylesheet' type='text/css'>

    <!-- Cargando iconos -->
    <link href='css-menu/font-awesome.min.css' rel='stylesheet' type='text/css'>

    <!-- Carga de Galeria de imágenes -->
    <link rel="stylesheet" href="css-menu/owl.carousel.min.css">

    <!-- Carga de archivos css -->
    <link rel="stylesheet" href="css-menu/bootstrap.css">
    <link rel="stylesheet" href="css-menu/animate.min.css">
    <link rel="stylesheet" href="css-menu/estilos.css">

</head>
        <title>Bienvenido</title>
    </head>
    <body>
        <div class="loader"></div>
        <%
            
            HttpSession hs= request.getSession(true);
          
             if(hs.getAttribute("User")==null||hs.getAttribute("Pass")==null ){
                response.sendRedirect("Home.jsp?n=5");
            }//else if(hs.getAttribute("User")!=null&&hs.getAttribute("Pass")!=null&&hs.getAttribute("Validador").toString().equals("3")){
               //  response.sendRedirect("Home.jsp?n=6");
            //}
            %>
       
          <!-- menu superior-->
    <section class="bienvenidos">

        <header class="encabezado navbar-fixed-top" role="banner" id="encabezado">
            <div class="container">
                <a href="index.html" class="logo">
                    <img src="images-menu/logo.svg" alt="Logo del sitio">
                </a>

                <button type="button" class="boton-buscar" data-toggle="collapse" data-target="#bloque-buscar" aria-expanded="false">
                    
                </button>
                <button type="button" class="boton-menu hidden-md-up" data-toggle="collapse" data-target="#menu-principal" aria-expanded="false">
                    <i class="fa fa-bars" aria-hidden="true"></i></button>

               

                <nav id="menu-principal" class="collapse">
                    <ul>
                        <li class="active"><a href="index.html">Inicio</a></li>
                        <li><a href="#4">Administrador</a></li>
                        <li><a class="logout" href="logout.jsp">Cerrar sesión</a></li>
                        <li>Bienvenido Usuario: <%=hs.getAttribute("User")%></li>
                    </ul>
                </nav>

            </div>
        </header>
<!-- fin del menu superior-->

<!-- inicio del encabezado-->
        <div class="texto-encabezado text-xs-center">

           </div>
        <div class="flecha-bajar text-xs-center">
            <a data-scroll href="#agencia"> <i class="fa fa-angle-down" aria-hidden="true"></i></a>
        </div>
<!-- fin del encabezado-->
    </section>
    
    <section class="agencia py-1" id="agencia">

        <div class="container">


            <div class="row">

                <div class="col-md-8 col-xl-9 wow bounceIn" data-wow-delay=".3s">
                    <h2 class="h3 text-xs-center text-md-left font-weight-bold">Descripcion</h2>
                    <p>Sapea bla bla bla .</p>
                    <p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>

                </div>
                <div class="col-md-4 col-xl-3 wow bounceIn" data-wow-delay=".6s">
                    <img src="images-menu/logo.svg" alt="">
                </div>
            </div>
        </div>

    </section>
    <section class="tu-mejor-eleccion py-1">
        <div class="container">

            <h2 class="h3 text-xs-center font-weight-bold">¿Porque somos <span>tu mejor elección?</span></h2>
            <p class="text-xs-center">
                Documentacion de anfivios 
            </p>

            <div class="row">
                <ul class="col-xs-6 col-lg-4 text-xs-center text-lg-left">
                    <li class="wow zoomIn" data-wow-duration=".3s" data-wow-delay=".3s">
                        <i class="fa fa-briefcase" aria-hidden="true"></i>

                        <div class="contenedor-eleccion">
                            <h4>Info</h4>
                            <p class="hidden-md-down">Para empresa que requiera ampliar sus plataformas de gestión.</p>
                        </div>
                    </li>
                    <li class="wow zoomIn" data-wow-duration=".3s" data-wow-delay=".7s">
                        <i class="fa fa-bullhorn" aria-hidden="true"></i>
                        <div class="contenedor-eleccion">
                            <h4>Info</h4>
                            <p class="hidden-md-down">Servicios de mejora correctiva y evolutiva para sus aplicaciones.</p>
                        </div>
                    </li>
                    <li class="wow zoomIn" data-wow-duration=".3s" data-wow-delay="1.1s">

                        <i class="fa  fa-comment-o" aria-hidden="true"></i>

                        <div class="contenedor-eleccion">
                            <h4>info</h4>
                            <p class="hidden-md-down">Para empresa que requiera ampliar sus plataformas de gestión.</p>
                        </div>
                    </li>
                </ul>

                <div class="hidden-md-down col-lg-4">
                    <img src="images-menu/logo.svg" alt="img center">
                </div>

                <ul class="col-xs-6 col-lg-4 text-xs-center text-lg-right">
                    <li class="wow zoomIn" data-wow-duration=".3s" data-wow-delay=".5s">
                        <i class="fa  fa-calendar" aria-hidden="true"></i>
                        <div class="contenedor-eleccion">
                            <h4>info</h4>
                            <p class="hidden-md-down">Para empresa que requiera ampliar sus plataformas de gestión.</p>
                        </div>
                    </li>
                    <li class="wow zoomIn" data-wow-duration=".3s" data-wow-delay=".9s">
                        <i class="fa  fa-forumbee" aria-hidden="true"></i>
                        <div class="contenedor-eleccion">
                            <h4>info</h4>
                            <p class="hidden-md-down">Customiza hasta el último píxel de tu App. Infinitas Posibilidades.</p>
                        </div>
                    </li>
                    <li class="wow zoomIn" data-wow-duration=".3s" data-wow-delay="1.3s">
                        <i class="fa  fa-database" aria-hidden="true"></i>
                        <div class="contenedor-eleccion">
                            <h4>info</h4>
                            <p class="hidden-md-down">Almacena todo en nuestra base de datos.</p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </section>
    
    
<!-- inicio de los servicios -->
  <main class="servicios py-1">
        <div class="container">
            <h2 class="text-xs-center font-weight-bold">Nuestros Servicios</h2>


            <div class="row">
                <article class="col-md-4 wow bounceInLeft" data-wow-delay=".3s">
                    <i class="fa  fa-database" aria-hidden="true"></i>          
                       
                    
                    <h3><a href="#"> Desarrollo de Aplicaciones Mobiles </a></h3>
                    <p class="hidden-sm-down">Desarrollamos aplicaciones móviles y plataformas web. Nuestra principal cualidad está en el desarrollo de software a medida de tus necesidades.</p>
                    <a href="#" class="btn btn-secondary hidden-sm-down">Más información</a>

                </article>

                <article class="col-md-4 wow bounceInUp" data-wow-delay=".6s">
                    <img src="images-menu/icono-servicio.svg" alt="Servicio Consultoría Tecnológica">
                    <h3><a href="#">Consultoría Tecnológica</a></h3>
                    <p class="hidden-sm-down">Ofrecemos consultoría tecnológica especializada en movilidad, necesaria previo al desarrollo de cualquier proyecto.</p>
                    <a href="#" class="btn btn-secondary hidden-sm-down">Más información</a>
                </article>

                <article class="col-md-4 wow bounceInRight" data-wow-delay="1s">
                    <img src="images-menu/icono-servicio.svg" alt="Servicio Marketing y publicidad Movil">
                    <h3><a href="#">Marketing y publicidad Movil</a></h3>
                    <p class="hidden-sm-down">Desarrollamos campañas publicitarias para tus APP. Hacemos conocer tu marca en el momento exacto para conseguir un mayor inpacto.</p>
                    <a href="#" class="btn btn-secondary hidden-sm-down">Más información</a>
                </article>

            </div>
        </div>
    </main>
<!-- termino de los servicios-->

<!-- inicio carrusel de imagenes-->
    <section class="ultimos-proyectos py-1">
        <div class="container">
            <h2 class="text-xs-center font-weight-bold">Tipos de ranas</h2>

            <div class="owl-carousel">
                <a href="#">
                    <h4>rana 6 </h4>
                    <img src="images-menu/rana5.jpg" alt="">
                </a>

                <a href="#">
                    <h4>rana 5</h4>
                    <img src="images-menu/rana5.jpg" alt="">
                </a>

                <a href="#">
                    <h4>rana 1</h4>
                    <img src="images-menu/rana5.jpg" alt="">
                </a>

                <a href="#">
                    <h4>ran 2</h4>
                    <img src="images-menu/rana5.jpg" alt="">
                </a>

                <a href="#">
                    <h4>rana 3</h4>
                    <img src="images-menu/rana5.jpg" alt="">
                </a>

                <a href="#">
                    <h4>rana 4</h4>
                    <img src="images-menu/rana5.jpg" alt="">
                </a>


            </div>
        </div>
    </section>
<!--fin carrusel de imagenes-->
<!-- pie de pagina-->
    <footer class="piedepagina py-1" role="contentinfo">
        <div class="container">
            <p> Todos los derechos reservados a mi</p>
            <ul class="redes-sociales">
                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"> </i>  </a></li>
                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i> </a></li>
                <li><a href="#"><i class="fa fa-youtube" aria-hidden="true"></i> </a></li>
            </ul>

        </div>

    </footer>

    <a data-scroll class="ir-arriba" href="#encabezado"><i class="fa  fa-arrow-circle-up" aria-hidden="true"> </i> </a>
 
    <!-- Carga de archivos  JS -->

    
    <script src="js-menu/jquery.min.js"></script>
    <script src="js-menu/bootstrap.min.js"></script>
    <script src="js-menu/owl.carousel.min.js"></script>
    <script type="text/javascript">
        $('.owl-carousel').owlCarousel({
            loop: true,
            margin: 0,
            nav: true,
            autoWidth: false,
            navText: ['<i class="fa fa-arrow-circle-left" title="Anterior"></i>', '<i class="fa  fa-arrow-circle-right" title="Siguiente"></i>'],
            responsive: {
                0: {
                    items: 1
                },
                500: {
                    items: 2,
                    margin: 20
                },
                800: {
                    items: 3,
                    margin: 20
                },
                1000: {
                    items: 4,
                    margin: 20
                }
            }
        })

    </script>
    <script src="js-menu/wow.min.js"></script>
    <script src="js-menu/smooth-scroll.min.js"></script>
    <script src="js-menu/sitio.js"></script>
    </body>
</html>
