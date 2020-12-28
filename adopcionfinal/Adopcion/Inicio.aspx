<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Adopcion.Inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="bootstrap.min.css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    
    <style>
         
        .formu{
             background-color:white;
        }
        .banner{
         background-image: url(imagenes/bga.jpg);
         background-position: center;
         background-size: 100% 100%;
         width: 100%; 
         height: 350px;

        }
        .banner h1{
        position: absolute;
        margin-top: 30px;
        letter-spacing: 15px;
        text-shadow: 2px -0px white;
        transform: rotate(-6deg);
        font-size: 3em;
        color:#9a784a;

        }
        .navbar
         {
          
            background-color: #807C6E; 
        }
        .container{
            margin-top:40px;
            margin-bottom:40px;
        }
        .foot 
         {
         padding-top:20px;
         background-size: 100% 100%;
         width: 100%; 
         height: 130px;
         text-align:center;
         color:white;
         background-color: #111;
         
         }
         .foot1 
         {
         margin-top:55px;
         padding-top:30px;
         width: 100%; 
         height: 100px;
         text-align:center;
          letter-spacing: 17px;
          background-color:#B37E45;
         }
         .texto{
             letter-spacing: 14px;
         }

 
    </style>
 <div id="carouselExampleControls1" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active cr1">
      <img src="imagenes/carrusel.jpg" class="d-block vh-100 vw-100" alt="Responsive image"/>
    </div>
    <div class="carousel-item">
      <img src="imagenes/gatito.jfif" class="d-block vh-100 vw-100" alt="Responsive image" />
    </div>
    <div class="carousel-item">
      <img src="imagenes/p.png" class="d-block vh-100 vw-100" alt="Responsive image" />
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls1" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls1" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

</asp:Content>
