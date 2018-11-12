<%-- 
    Document   : VerListadeProyectos
    Created on : 26-oct-2018, 9:34:47
    Author     : karol
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
  <meta charset="UTF-8">
  <title>Proyectos-Menu</title>
  
  
  <link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
<link rel='stylesheet' href='http://cdnjs.cloudflare.com/ajax/libs/animate.css/3.2.3/animate.min.css'>
<link rel='stylesheet' href='http://cdnjs.cloudflare.com/ajax/libs/animate.css/3.2.3/animate.min.css'>
    <link rel="stylesheet" href="../../CSS/Fondo.css">

      <link rel="stylesheet" href="../../CSS/Proyectos.css">

  
</head>

<body>
  <nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <center>
        <a class="navbar-brand" href="/">Calculus PS</a>
    </center>
    </div>
    <div class="collapse navbar-collapse">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user">&nbsp;</span>Hello Admin</a></li>
        <li><a href="#">Logout</a></li>
      </ul>
    </div>
  </div>
</nav>
<div class="container-fluid">
  <div class="col-md-3">

    <div id="sidebar">
      
    <form action="/CalculusPS/ServletConsultaPro" method="post">
    <div class="container-fluid tmargin">
        <div class="input-group">
          <input type="text" class="form-control" placeholder="Buscar Proyectos..." />
          <span class="input-group-btn">
              <button class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
          </span>
        </div>
    </div>
    </form>

      <ul class="nav navbar-nav side-bar">
          <li class="side-bar tmargin"><a href="VerListadeProyectos.jsp"><span class="glyphicon glyphicon-list">&nbsp;</span>Proyectos actuales</a></li>
          <li class="side-bar"><a href="GenerarProyecto.jsp"><span class="glyphicon glyphicon-flag">&nbsp;</span>Nuevo Proyecto</a></li>
        <li class="side-bar">
          <a href="#"><span class="glyphicon glyphicon-certificate">&nbsp;</span>Importar Simulaciones</a></li>

        <li class="side-bar"><a href="#"><span class="glyphicon glyphicon-signal">&nbsp;</span>Importar Calculos</a></li>
        <li class="side-bar"><a href="ModificarProyecto.jsp"><span class="glyphicon glyphicon-cog">&nbsp;</span>Modificar Proyecto</a></li>

      </ul>
    </div>
  </div>
  <div class="col-md-9 animated bounce">
      <h1 style="color: white">Proyectos Actuales</h1>
    <hr style="height: 3px; background-color: white">
    <table class="table table-hover" style="color: white">
      <thead>
        <th class="text-center">#</th>
        <th>Title</th>
        <th>Status</th>

      </thead>
      <tbody>
        <tr>
          <td class="text-center">1</td>
          <td width="70%">Proyecto<input type="text" value="Proyecto" style="visibility: hidden"> </td>
          <td><form action="/CalculusPS/ServletConsultaPro" method="post">
            <button style="background-color: transparent; border-color: transparent"><span class="label label-info"><span class="glyphicon glyphicon-time">&nbsp;</span>Pending</span></button>            
          </form></td>
        </tr>
        
        <tr>
          <td class="text-center">2</td>
          <td width="70%">Proyecto<input type="text" value="Proyecto" style="visibility: hidden"></td>
          <td><form action="/CalculusPS/ServletConsultaPro" method="post">
              <button style="background-color: transparent; border-color: transparent"><span class="label label-success"><span class="glyphicon glyphicon-ok-sign">&nbsp;</span>Live</span></button>
          </form></td>
        </tr>

        <!-- DUMP CONTENT END -->

      </tbody>

    </table>
  </div>
</div>
</body>
<script src='https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.2/TweenLite.min.js'></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.2/TweenLite.min.js'></script>
    <script  src=" Fondo.js"></script>
    <script  src=" Fondo.js"></script>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script>

</html>
