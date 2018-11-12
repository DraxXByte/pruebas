<%-- 
    Document   : Reg
    Created on : 4/10/2018, 08:27:07 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>CalculusPS-SignUp</title>
  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  <link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

      <link rel="stylesheet" href="../CSS/Registro.css">

  
</head>

<body>

  
<!-- .h3 Comienza tu prueba gratuita de 30 días ya mismo-->
<!-- p o puedes comprar tu plan en Softlife ahora mismo-->
<div class="container">
    <h1>Sign Up</h1>
    <form action="/CalculusPS/ServeltRegistro" method="post">
    <div class="row">
      <h4>Datos Personales</h4>
        
        <div class="input-group input-group-icon">
            <input type="text" placeholder="Nombre" name="Nombre"/>
            <div class="input-icon"><i class="fa fa-user"></i></div>
        </div>
        
        <div class="input-group input-group-icon">
            <input type="text" placeholder="Username" name="Username"/>
            <div class="input-icon"><i class="fa fa-user"></i></div>
        </div>
        
             <div class="input-group input-group-icon">
            <input type="password" placeholder="Contraseña" name="Contra"/>
            <div class="input-icon"><i class="fa fa-key"></i></div>
        </div>
        
    
        
    </div>
        
    <div class="row">
      
        <div class="col-half">
            <h4>Edad</h4>
            <div class="input-group">
            <div class="col-third">
                <input type="text" placeholder="Edad" name="Edad"/>
            </div>
            </div>
        </div>     

    </div>
        
    <div class="row">
        <h3>Datos Laborales</h3>
        <div class="col-half">
            <h4>Carrera</h4>
            <div class="input-group">
            <div class="col-third">
                <input type="text" placeholder="Carrera" name="Carrera"/>
            </div>
            </div>
        </div>
        
      <div class="col-half">
            <h4>Puesto</h4>
            <div class="input-group">
            <div class="col-third">
                <input type="text" placeholder="Puesto" name="Puesto"/>
            </div>
            </div>
        </div>
    </div>
        
    <div class="row">
      <div class="input-group">
             
        <input type="submit" value="Aceptar Datos"/>
      </div>
    </div>
  </form>
</div>
  <script src='http://misoftlife.com/wp-content/formulario_trial/jquery.min.js'></script>

  

</body>

</html>
