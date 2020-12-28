<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistroOrganizacion.aspx.cs" Inherits="Adopcion.RegistroOrganizacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

       <style>

        .form1{
         font-size: 2em;
        }
     
         .textbox{
          border: none;
          outline: none;
          background: none;
          font-size: 18px;
          width: 80%;
          margin: 0 10px;
        }
       
        .form5{
            font-size: 1em;
            text-size-adjust: auto;
            width:400px;
            margin-top: 5%;
            text-align:center;
            }
      
        
        .texto1{
            height:50px;
        }
        .texto2 h2{
            padding-top: 10px;
        }
        .form2{
           width: 95%;
          font-size: 20px;
          padding: 15px 0;
          margin: 13px;
          border-bottom: 1px solid gray;
          overflow: hidden;
    }

        .boton{
           
            border-radius: 10px;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 12px;
             margin: 10px 3px;
            transition-duration: 0.4s;
            cursor: pointer;
            background-color:#9B214A;
        }
        .boton1 {
         background-color: #9B214A; 
         color: black; 
         border: 2px solid #9B214A;
        }
    </style>

      <div class="contenedor">
    <div class="row">     
   <div class="col col-lg-2 col-md-2 col-sm-12">
   </div>
     
  
    <div class="form1 text-center mx-auto col col-lg-4 col-md-4 col-sm-12" runat="server">
        <div class="texto1">
        <h2 class="text-dark">Registro de Organizacion  </h2>
            </div>
       
    <div class="form-group form2">
        <asp:TextBox id="Nombre" type="text" class="text-dark mx-auto textbox" placeholder="Nombre"  Width="300px"  Height="40px" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator runat="server" ControlToValidate="Nombre" ErrorMessage="El Nombre de la organizacion es obligatorio." 
             ValidationGroup="org" ToolTip="El Nombre de la organizacion es obligatorio." ID="rfvEstado" 
             CssClass="text-dark" SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div>
       <div class="form-group form2">
        <asp:TextBox id="DireccionUBI"  type="text" class="text-dark mx-auto textbox" placeholder="DireccionUBI" Width="300px"  Height="40px" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="DireccionUBI" ErrorMessage="Su direccion de la organizacion es Obligatorio" 
            ValidationGroup="org" 
            ToolTip="Su direccion de la organizacion es Obligatorio" ID="rfvNombre" CssClass="text-dark" 
            SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div>
      
           <div class="form-group form2">
               <asp:TextBox ID="Localidad" runat="server" type="text" Width="300px"  Height="40px" placeholder="Localidad" CssClass="text-dark mx-auto textbox"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="Localidad" ErrorMessage="La Localidad es obligatorio." 
            ValidationGroup="org" 
            ToolTip="La Localidad es obligatorio." ID="rfvRaza" CssClass="text-dark" 
            SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div>

        <div class="form-group form2">
               <asp:TextBox ID="NroContacto" runat="server" type="text" Width="300px"  Height="40px" placeholder="Numero de Contacto" CssClass="text-dark mx-auto textbox"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="nroContacto" ErrorMessage="El numero de contacto es obligatorio." 
            ValidationGroup="org" 
            ToolTip="El numero de contacto es obligatorio." ID="rfvTipoMascota" CssClass="text-dark" 
            SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div>

            <div class="form-group form2">
               <asp:TextBox ID="Correo" runat="server"  type="email"  Width="300px" Height="40px" placeholder="Correo Electronico" CssClass="text-dark mx-auto textbox"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="Correo" ErrorMessage="La fecha de nacimiento es obligatorio." 
            ValidationGroup="org" 
            ToolTip="Ingrese su numero de documento" ID="rfvNroDoc" CssClass="text-dark" 
            SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div>

        <asp:Button Text="Registrar" ID="btnRegistrar" runat="server" class="btn boton boton1 text-light"   ValidationGroup="org" OnClick="btnRegistrar_Click"/>
        
        <a href="MantenimientoOrganizacion.aspx" role="button" class="btn boton boton1 text-light">Mostrar</a>
            </div>
    
            <div class="col col-lg-6 col-md-6 col-sm-12 tex mx-auto img-fluid" style="background:url(imagenes/organizacion.png)center center;width:100%;height:500px">
            <h4  class="text-justify"  style="color:white;font-size:1.5em">
                
            </h4>
            </div>
           </div>
  </div>





</asp:Content>
