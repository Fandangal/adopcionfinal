<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistroAdministrador.aspx.cs" Inherits="Adopcion.RegistroAdministrador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <link rel="stylesheet" href="bootstrap.min.css" />

    <style>

        placeholder{
           color: gray;
        }
         .form{
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
       
        .form3{
         font-size: 1em;
         text-size-adjust: auto;
         width:400px;
         margin-top: 5%;
         text-align:center;
       }
      
        
        .textos{
            height:50px;
        }
        .texto h2{
            padding-top: 10px;
        }
        .form4{
           width: 95%;
          font-size: 20px;
          padding: 8px 0;
          margin: 8px;
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
         .tex{
            padding-top:44%;
        }
    </style>

     <div class="contenedor">
    <div class="row">    

        <div class="col col-lg-7 col-md-7 col-sm-12 tex mx-auto img-fluid" style="background:url(imagenes/admin.jpg)center center;width:100%;height:500px">
            <h4  class="text-justify"  style="color:white;font-size:1.5em">
                
            </h4>
            </div>
  
    <div class="form text-center mx-auto col col-lg-4 col-md-4 col-sm-12" runat="server">
        <div class="textos">
        <h2 style="color:gray">Registro de Administrador</h2>
            </div>

    
     <div class="form-group form4">
        <asp:DropDownList runat="server" ID="ddlOrganizaciones" style="border-style:none">
                
            </asp:DropDownList>
         <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlOrganizaciones" ErrorMessage="El nombre es obligatorio." 
             ValidationGroup="RegistrarAdmin" ToolTip="El nombre de usuario es obligatorio." ID="RequiredFieldValidator2" 
             CssClass="text-light" SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div>

    <div class="form-group form4">
        <asp:TextBox id="UserNam" type="email" class="text-dark mx-auto textbox" placeholder="Usuario"  Width="300px"  Height="40px" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator runat="server" ControlToValidate="UserNam" ErrorMessage="El nombre es obligatorio." 
             ValidationGroup="RegistrarAdmin" ToolTip="El nombre de usuario es obligatorio." ID="rfvUsuario" 
             CssClass="text-dark" SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div>
    <div class="form-group form4">
        <asp:TextBox id="txtPassword" TextMode="Password" type="password" class="text-light mx-auto textbox" placeholder="Contraseña" Width="300px"  Height="40px" runat="server">Contraseña</asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword" ErrorMessage="La contraseña es obligatoria." 
            ValidationGroup="RegistrarAdmin" 
            ToolTip="El nombre de usuario es obligatorio." ID="Contraseña" CssClass="text-dark" 
            SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div>

       <div class="form-group form4">
        <asp:TextBox id="Nombre"  type="text" class="text-dark mx-auto textbox" placeholder="Nombre" Width="300px"  Height="40px" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="Nombre" ErrorMessage="Su nombre es Obligatorio" 
            ValidationGroup="RegistrarAdmin" 
            ToolTip="El nombre de usuario es obligatorio." ID="rfvNombre" CssClass="text-dark" 
            SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div>
            
        <div class="form-group form4">
            <asp:TextBox  id="Apellido" type="text" class="text-dark mx-auto textbox" placeholder="Apellido" Width="300px"  Height="40px" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="Apellido" ErrorMessage="El Apellido es obligatorio." 
            ValidationGroup="RegistrarAdmin" 
            ToolTip="El nombre de usuario es obligatorio." ID="rfvApellido" CssClass="text-dark" 
            SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div>
         <div class="form-group form4">
               <asp:TextBox ID="Direccion" runat="server" Width="300px"  Height="40px" placeholder="Direccion" CssClass="text-dark mx-auto textbox"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="Direccion" ErrorMessage="El Numero del celular es obligatorio." 
            ValidationGroup="RegistrarAdmin" 
            ToolTip="Ingrese su numero de celular." ID="rfvDireccion" CssClass="text-dark" 
            SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div>

        <div class="form-group form4">
               <asp:TextBox ID="NroCelular" runat="server" Width="300px"  Height="40px" placeholder="Numero de Celular" CssClass="text-dark mx-auto textbox"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="NroCelular" ErrorMessage="El Numero del celular es obligatorio." 
            ValidationGroup="RegistrarAdmin" 
            ToolTip="Ingrese su numero de celular." ID="rfvNroCelular" CssClass="text-dark" 
            SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div>
               
                 <div class="form-group form4">
                     <asp:DropDownList ID="TipoDocumento" runat="server" Width="300px"  Height="40px" CssClass="mx-auto textbox" style="color:gray" >
                <asp:ListItem >ELIJA OPCION</asp:ListItem>
                 <asp:ListItem>DNI</asp:ListItem>
                 <asp:ListItem>PASAPORTE</asp:ListItem>
                 <asp:ListItem>CEDULA</asp:ListItem>
                </asp:DropDownList>
             <asp:RequiredFieldValidator runat="server" ControlToValidate="TipoDocumento" ErrorMessage="La fecha de nacimiento es obligatorio." 
            ValidationGroup="RegistrarAdmin" 
            ToolTip="Elegir una opcion es obligatorio." ID="rfvDocumento" CssClass="text-dark" 
            SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div>
               
            <div class="form-group form4">
               <asp:TextBox ID="NroDocumento" runat="server" Width="300px" Height="40px" placeholder="Numero Documento" CssClass="text-dark mx-auto textbox"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="NroDocumento" ErrorMessage="La fecha de nacimiento es obligatorio." 
            ValidationGroup="RegistrarAdmin" 
            ToolTip="Ingrese su numero de documento" ID="rfvNroDoc" CssClass="text-dark" 
            SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div>
        
        <asp:Button Text="Registrar" ID="btnRegistrar" class="btn boton boton1 text-light" runat="server" ValidationGroup="RegistrarAdmin" OnClick="btnRegistrar_Click"/>
        <a href="Log.aspx" role="button" class="btn boton boton1 text-light">Inicio</a>
            </div>
        <div class="col col-lg-1 col-md-1 col-sm-12">
   </div>
           </div>
  </div>


</asp:Content>
