<%@ Page Title="" Language="C#" MasterPageFile="~/SiteAdoptante.Master" AutoEventWireup="true" CodeBehind="NosotrosAdoptante.aspx.cs" Inherits="Adopcion.NosotrosAdoptante" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <link rel="stylesheet" href="bootstrap.min.css" />
    <style>
    
      
        .descripcion {
    position: relative;
    padding: 50px 40px;
   
    text-align: center;
    font-size: 18px;
    font-family: 'GothamRounded-Light';
    }
        .descripcion1{
       
    position: relative;
    margin-bottom:auto;
    margin-top:10px;
    padding: 50px 30px;
    text-align: center;
    font-size: 22px;
    font-family: 'GothamRounded-Light';
    background-color:white;
        }

        .imagen{
         background-image:url(imagenes/nosotros.png);
         background-position: center;
         background-size: 100% 100%;
         width: 100%; height: 250px;
        }
         .imagen1{
         background-image:url(imagenes/nosotros1.png);
         background-position: center;
         background-size: 100% 100%;
         height: 238px;
         margin-top:10px;
        }

         .h2
         {
             <%---background-color:#9cccbc---%>
             font-family: 'GothamRounded-Light';
            color:#052427;
         }
    
         .columna{
             margin-top:10px;
         }
    </style>
 

    <div class="row row-cols-1 row-cols-md-2 columna">
  <div class="col mb-4">
    <div class="card">
      <img src="imagenes/nosotros3.png" class="card-img-top" alt="...">
      <div class="card-body descripcion1">
        <h3 class="card-title">NOSOTROS</h3>
        <h4 class="card-text text-justify ">Somos una organización sin fines de lucro que busca incrementar el número de adopciones en Lima, 
            a través de un espacio virtual que centralice las oportunidades de adopción, 
    brindando además asesoría integral a los adoptantes y trabajando en coordinación con una red de albergues.</h4>
      </div>
    </div>
  </div>
  <div class="col mb-4">
    <div class="card">
      <img src="imagenes/nosotros.png" class="card-img-top" alt="...">
      <div class="card-body descripcion1">
        <h3 class="card-title">ADOPTA</h3>
        <h4 class="card-text text-justify">Adopta, cambia una vida y suma felicidad a la tuya. En Uywasqay puedes encontrar a tu mascota 
            ideal! Conoce a nuestros animalitos que buscan un hogar y que necesitas de el y el de ti con la finalidad de poder brindar un calor
            hogar y tener el afecto mutuo a traves de nuestra organizacion!</h4>
      </div>
    </div>
  </div>
</div>

    <div class="row row-cols-1 row-cols-md-2 columna">
  <div class="col mb-4">
    <div class="card">
      <img src="imagenes/nosotros1.png" class="card-img-top" alt="...">
      <div class="card-body descripcion1">
        <h3 class="card-title">MISION</h3>
        <h4 class="card-text text-justify ">Somos un equipo de jóvenes profesionales voluntarios que buscan darle a las mascotas abandonadas mayores oportunidades de adopción, 
                    contribuyendo a que tanto las familias como las mascotas puedan llevar una vida más feliz</h4>
      </div>
    </div>
  </div>
  <div class="col mb-4">
    <div class="card">
      <img src="imagenes/nosotros2.png" class="card-img-top" alt="...">
      <div class="card-body descripcion1">
        <h3 class="card-title">VISION</h3>
        <h4 class="card-text text-justify">Somos un equipo de jóvenes profesionales voluntarios que buscan darle a las mascotas abandonadas mayores oportunidades de adopción, 
                    contribuyendo a que tanto las familias como las mascotas puedan llevar una vida más feliz</h4>
      </div>
    </div>
  </div>
</div>
</asp:Content>
