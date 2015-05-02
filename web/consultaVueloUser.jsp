<%-- 
    Document   : consultaVueloUser
    Created on : 02-may-2015, 13:38:41
    Author     : Andres Montoya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Consultar Vuelo</title>
        <link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
        <link rel="stylesheet" href="layout/styles/bootstrap/css/bootstrap.css"/>
        <link rel="stylesheet" type="text/css" href="css/dark-hive/jquery-ui-1.10.4.custom.css">
        <script src='js/jquery-1.10.2.js'></script>
        <script src='js/jquery-ui-1.10.4.custom.min.js'></script>
        <script type="text/javascript" src="js/jquery.ui.datepicker-es.js"></script>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimun-scale=1.0">
    </head>
    <body id="myBody">
        <div class="wrapper">
    <div id="header">
    <div id="logo">
        <a href="index.html"><img id="logo" src="images/EasyTicketsLogo.png" alt="" /></a>
    </div>
    <div id="topnav">
      <ul>
        <li ><a href="index.jsp">Inicio</a></li>
        <li class="active"><a href="VerOferta.html">Consultar Ofertas</a></li>
        <li class="last"><a href="login.html">Ingresar a mi cuenta</a></li>
       </ul>
    </div>
    <br class="clear" />
    </div>
        </div>
<div class="wrapper">
  <div id="latest">
    <div class="fl_left3">
         <div class="center"><b>Ingrese los parametros de busqueda</b></div> <br> 
        <form class="form-horizontal">
            <div class="form-group">
            <div class="col-lg-11"><input type="text" class="form-control" id="origen" placeholder="Origen"></div>
            </div>
            <div class="form-group">
            <div class="col-lg-11"><input type="text" class="form-control" id="destino" placeholder="Destino"></div>
            </div>
            <div class="form-group">
                <script type="text/javascript">
            $(function() {
                $("#fecha").datepicker({
                    currentText:"now",
                    dateFormat: "yy-mm-dd",
                    appendText: "(yyyy-mm-dd)"
                });
            });
           
        </script>
            <div class="col-lg-11"><input type="text" class="form-control" id="fecha" name="fecha" placeholder="Fecha de salida"></div>
            </div>
            <div class="form-group">
            <div class="col-lg-11"><input type="text" class="form-control" id="fecha_llegada" placeholder="Fecha de llegada"></div>
            </div>
            <div class="form-group">
            <div class="col-lg-4"><input type="text" class="form-control" id="puesto" placeholder="Puestos"></div>
            </div>
            <div class="form-group">
                <div class="col-lg-3"><button type="submit" class="btn-custom btn-lg">Buscar</button></div>
            </div>
        </form>
    </div>
    <br class="clear" />
  </div>
</div>

<div class="wrapper">
  <div id="container">
    <div id="content">
      <h2> Que es "tiquetes al aire"</h2>
      <p>Somos una empresa creada para facilitar la compra de los usuarios de tiquetes para volar, ayudando
          a nuestros clientes en la gestion y abordaje, ademas brindando las mejores asesorias sobre los destinos turisticos y en que temporada
          es mas recomendado viajar.<a href="http://www.os-templates.com/">Tiquetes al aire </a>.</p>
      </div>
    <div id="column">
      <div class="holder">
        <h2>Disfruta Medellin</h2>
        <ul id="latestnews">
          <li class="last"><img class="imgl" src="images/imgMedellin1.jpg" alt="" />
            <p><strong> Los Paisas!</strong></p>
            <p>Medellín fue elegida como la ciudad más innovadora del mundo, en el marco del concurso City of the Year,
                que organizan The Wall Street Journal y Citigroup. La capital antioqueña compitió con Nueva York y Tel Aviv;
                la decisión dependió de una votación abierta al público por Internet</p>
            <p class="readmore"><a href="#">Seguir leyendo... &raquo;</a></p>
          </li>
        </ul>
      </div>
    </div>
    <br class="clear" />
  </div>
</div>
<div class="wrapper">
  <div id="footer">
    <div id="newsletter">
      <h2>Dejanos tu correo para enviarte nuestras promociones !</h2>
      <form action="#" method="post">
        <fieldset>
          <legend>News Letter</legend>
          <input type="text" value="Enter Email Here&hellip;"  onfocus="this.value=(this.value=='Enter Email Here&hellip;')? '' : this.value ;" />
          <input type="submit" name="news_go" id="news_go" value="GO" />
        </fieldset>
      </form>
      <p>Para darte de baja <a href="#">click aqui &raquo;</a></p>
    </div>
    <div class="footbox">
      <h2>Siguenos en!</h2>
      <ul>
        <li><a href="#">Twitter</a></li>
        <li><a href="#">Facebook</a></li>
        <li><a href="#">Instagram</a></li>
       </ul>
    </div>
    
    
    <br class="clear" />
  </div>
</div>
<div class="wrapper">
  <div id="copyright">
    <p class="fl_left">Copyright &copy; 2014 - All Rights Reserved - <a href="#">Desarrollado por AM & AA</a></p>
    <p class="fl_right">Template by <a target="_blank" href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
    <br class="clear" />
  </div>
</div>
    <script src="layout/styles/bootstrap/js/jquery.js"></script>
    <script src="layout/styles/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>