<%@ Page Title="" Language="C#" MasterPageFile="~/SitePublico.Master" AutoEventWireup="true" CodeBehind="ContactanosPublico.aspx.cs" Inherits="Adopcion.ContactanosPublico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <link rel="stylesheet" href="bootstrap.min.css" />
    <style>

     
        .form{
         font-size: 2em;
         background-color:#111;
        }
        .form2{
        width: 90%;
         font-size: 10px;
         padding: 10px 0;
         margin: 5px 0;
         border-bottom: 2px solid #111;
        }
        .form3{
         width: 90%;
        padding: 8px 0;
         margin: 5px 0;
        overflow: hidden;
}
        .textbox{
         border: none;
         outline: none;
         background: none;
         font-size: 14px;
         width: 80%;
         margin: 0 10px;
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
            background-color:#547D85;
        }
        .boton1 {
         background-color: #547D85; 
         color: black; 
         border: 2px solid #547D85;
        }
     
        .textos{
            text-align:center;
            width: 90%;
        }
        .tex{
            padding-top:38%;
        }
        
    </style>


       <div class="contenedor">
    <div class="row">     

        <div class="col col-lg-7 col-md-7 tex" style="background:url(imagenes/contactanos.jpg)center center">
            <p  class="text-justify" style="color:white;font-size:1.5em">
                Si necesitas soporte o tienes alguna duda envianos tus dudas y/o comentarios 
                solo completa nuestro formulario y el equipo estara para poder aclarar tus dudas y se pondra
                en contacto contigo. Nuestros campos que estan en en Asterisco(*) son Obligatorios.
            </p>
            </div>
  
    <div class="form text-center mx-auto col col-lg-4 col-md-4 col-sm-12" runat="server">
        <div class="textos">
        <h2 class="text-dark">Envianos tu duda al correo electronico</h2>
            </div>
    <div class="form-group form2">
        <asp:TextBox ID="txtNombre" type="text" class="text-light mx-auto textbox" placeholder="NOMBRES"    Height="40px" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator runat="server" ControlToValidate="txtNombre" ErrorMessage="El nombre es obligatorio." ValidationGroup="Contac" ToolTip="El nombre de usuario es obligatorio." ID="Nombres" CssClass="text-light" SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div><p></p>
    <div class="form-group form2">
        <asp:TextBox id="txtEmail" type="email" class="text-light mx-auto textbox" placeholder="INGRESE SU EMAIL"   Height="40px" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail" ErrorMessage="El nombre de usuario es obligatorio." ValidationGroup="Contac" ToolTip="El Email es obligatorio." ID="Em" CssClass="text-light">*</asp:RequiredFieldValidator>
        </div><p></p>
        <div class="form-group form2">
            <asp:TextBox  id="txtCompania" type="text" class="text-light mx-auto textbox" placeholder="ELIJA LA COMPAÑIA"   Height="40px" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCompania" ErrorMessage="El nombre de usuario es obligatorio." ValidationGroup="Contac" ToolTip="Seleccione la compañia" ID="Compañias" CssClass="text-light">*</asp:RequiredFieldValidator>
        </div><p></p>
         <div class="form-group form2">
             <asp:TextBox id="txtTelefono" type="text" class="text-light mx-auto textbox" placeholder="INGRESE SU NUMERO DE TELEFONO"   Height="40px" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator runat="server" ControlToValidate="txtTelefono" ErrorMessage="El telefo es obligatorio." ValidationGroup="Contac" ToolTip="Ingrese su telefono" ID="phone" CssClass="text-light">*</asp:RequiredFieldValidator>
        </div><p></p>
        <div class="form-group form3">
        <textarea id="TextArea1" cols="20" rows="3" class="form-control bg-light mx-auto" runat="server" placeholder="MENSAJE" style="height:80px"></textarea>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="TextArea1" ErrorMessage="El telefo es obligatorio." ValidationGroup="Contac" ToolTip="Ingrese su telefono" ID="RequiredFieldValidator1" CssClass="text-light">*</asp:RequiredFieldValidator>
        </div><p></p>
        <asp:Button ID="btnEnviar" runat="server" Text="ENVIAR" type="submit" CssClass="boton boton1 mx-auto" ValidationGroup="Contac" OnClick="btnEnviar_Click"/>
    </div>
        <div class="col col-lg-1 col-md-1 col-sm-12">
   </div>
           </div>
  </div>
</asp:Content>
