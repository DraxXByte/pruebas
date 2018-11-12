<%-- 
    Document   : Menu
    Created on : 31-oct-2018, 18:45:55
    Author     : karol
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Calculus PS Menu</title>
  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
    <link rel="stylesheet" href="../CSS/Menu.css">

  
</head>

<body>

  <nav class="nav nav--left">
  <ul>
    <li>
        <a href="../JSP/Calculos/CalculosIndex.jsp"><span>Cálculos</span></a>
    </li>
    <li>
      <a href="../JSP/Simulacion/SimulacionIndex.jsp"><span>Simulaciones</span></a>
    </li>
    <li>
      <a href="../JSP/Proyectos/ProyectosIndex.jsp"><span>Proyectos</span></a>
    </li>
  </ul>
</nav>

<figure class="logo">
  <img src="../images/Logo.png">
</figure>

<nav class="nav nav--right">
  <ul>
    <li>
        <a href="../Index.jsp" ><span>Sign out</span></a>
    </li>
    <li>
        <span style="color: white">Bienvenido "Nombre del Usuario"</span>
    </li>
  </ul>
</nav>

<div class="slider js-slider">
  <div class="slider__inner js-slider__inner"></div>
  
  <div class="slide js-slide">
    <div class="slide__content">
      <figure class="slide__img js-slide__img">
          <img src="../images/Building1.jpg">
      </figure>
       <figure class="slide__img js-slide__img">
           <img src="https://artelista.s3.amazonaws.com/obras/big/6/5/1/4001884722198228.jpg">
      </figure>
    </div>
    
    <div class="slider__text js-slider__text">
      <div class="slider__text-line js-slider__text-line"><div>Calculus PS</div></div>
      <div class="slider__text-line js-slider__text-line"><div>A design Plataform</div></div>
    </div>
    
  </div>
  
  
  <nav class="slider__nav js-slider__nav">
    <div class="slider-bullet js-slider-bullet">
      <span class="slider-bullet__text js-slider-bullet__text">01</span>
      <span class="slider-bullet__line js-slider-bullet__line"></span>
    </div>
     <div class="slider-bullet js-slider-bullet">
      <span class="slider-bullet__text js-slider-bullet__text">02</span>
      <span class="slider-bullet__line js-slider-bullet__line"></span>
    </div>
     <div class="slider-bullet js-slider-bullet">
      <span class="slider-bullet__text js-slider-bullet__text">03</span>
      <span class="slider-bullet__line js-slider-bullet__line"></span>
    </div>
  </nav>
  
  <div class="scroll js-scroll">Welcome</div>
  
</div>


<script id="vertexShader" type="x-shader/x-vertex">
  varying vec2 vUv;
  void main() {
    vUv = uv;
    gl_Position = projectionMatrix * modelViewMatrix * vec4(position, 1.0);
  }
</script>

<script id="fragmentShader" type="x-shader/x-fragment">
  varying vec2 vUv;

  uniform sampler2D texture1;
  uniform sampler2D texture2;
  uniform sampler2D disp;

  uniform float dispPower;
  uniform float intensity;
  
  void main() {
    vec2 uv = vUv;
    
    vec4 disp = texture2D(disp, uv);
    vec2 dispVec = vec2(disp.x, disp.y);
    
    vec2 distPos1 = uv + (dispVec * intensity * dispPower);
    vec2 distPos2 = uv + (dispVec * -(intensity * (1.0 - dispPower)));
    
    vec4 _texture1 = texture2D(texture1, distPos1);
    vec4 _texture2 = texture2D(texture2, distPos2);
    
    gl_FragColor = mix(_texture1, _texture2, dispPower);
  }
</script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/three.js/97/three.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.2/TweenMax.min.js'></script>

  

    <script  src="../JS/Menu.js"></script>




</body>

</html>
