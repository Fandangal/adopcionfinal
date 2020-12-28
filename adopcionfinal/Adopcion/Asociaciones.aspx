<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Asociaciones.aspx.cs" Inherits="Adopcion.Asociaciones" %>
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
    margin-top:0px;
    padding: 50px 40px;
    text-align: center;
    font-size: 18px;
    font-family: 'GothamRounded-Light';
        }
        .imagen{
         background-image:url(Perro.jpg);
         background-position: center;
         background-size: 100% 100%;
         width: 100%; height: 250px;
        }
         .imagen1{
         background-image:url(Perro1.jpg);
         background-position: center;
         background-size: 100% 100%;
         width: 100%; height: 238px;
        }
         .imagen2{
         background-image:url(Gato.jpg);
         background-position: center;
         background-size: 100% 100%;
         width: 100%; height: 238px;
        }
         .contenedor1{
              border: 1px groove #dde4ea;
         }
         .h3
         {
             <%---background-color:#9cccbc---%>
             font-family: 'GothamRounded-Light';
         }
    </style>

     <div class="container contenedor1">
        <div class="row">
            <div class="imagen col col-lg-5 col-md-6 col-sm-12">
                </div>
        <h3 class="descripcion text-justify col col-lg-7 col-md-6 col-sm-12">"Somos una organización sin fines de lucro que busca incrementar el número de adopciones en Lima, 
            a través de un espacio virtual que centralice las oportunidades de adopción, 
    brindando además asesoría integral a los adoptantes y trabajando en coordinación con una red de albergues."
        </h3>
            </div>

         

        </div>

      <div class="container contenedor1">
        <div class="row">
            <h3 class="descripcion text-justify col col-lg-7 col-md-6 col-sm-12">"Somos una organización sin fines de lucro que busca incrementar el número de adopciones en Lima, 
            a través de un espacio virtual que centralice las oportunidades de adopción, 
    brindando además asesoría integral a los adoptantes y trabajando en coordinación con una red de albergues."
        </h3>
            <div class="imagen1 col col-lg-5 col-md-6 col-sm-12">
                </div>
        
            </div>
        </div>

          <div class="container contenedor1">
        <div class="row">
             <div class="imagen2 col col-lg-5 col-md-6 col-sm-12">
                </div>
            <h3 class="descripcion text-justify col col-lg-7 col-md-6 col-sm-12">"Somos una organización sin fines de lucro que busca incrementar el número de adopciones en Lima, 
            a través de un espacio virtual que centralice las oportunidades de adopción, 
    brindando además asesoría integral a los adoptantes y trabajando en coordinación con una red de albergues."
        </h3>
            </div>

        </div>




</asp:Content>
