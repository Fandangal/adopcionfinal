<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="Adopcion.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="bootstrap.min.css" />
    <title></title>
     <style>
         placeholder{
             color:#755353;
         }
           body{
        margin: 0;
        padding: 0;
     font-family: sans-serif;
    background-size: 100%;
    background: url(imagenes/a.jpg) no-repeat;
      /* Aquí el origen de la imagen */
  /* Fijar la imagen de fondo este vertical y
    horizontalmente y centrado */
  background-position: center center;
  /* COn esta regla fijamos la imagen en la pantalla. */
  background-attachment: fixed;
  /* La imagen ocupa el 100% y se reescala */
  background-size: cover;
}
        .textbox{
          border: none;
          outline: none;
          background: none;
          font-size: 18px;
          width: 80%;
          margin: 0 10px;
        }
       
        .form1{
            font-size: 1em;
            text-size-adjust: auto;
            width:400px;
            margin-top: 5%;
            text-align:center;
            }
      
        
        .texto{
            height:50px;
        }
        .texto h5{
            padding-top: 10px;
        }
        .form2{
           width: 95%;
          font-size: 20px;
          padding: 0px 0;
          margin: 8px 0;
          border-bottom: 1px solid gray;
          overflow: hidden;
    }
    </style>
</head>
<body>
    
    <form id="form1" runat="server" class="form1 mx-auto form-group container">
           <div class="form text-center mx-auto" runat="server">
        <div class="texto">
        <h5 class="text-light">REGISTRARSE</h5>
            </div>
    
    <div class="form-group form2">
        <asp:TextBox id="txtUserName" type="email" class="text-light mx-auto textbox" placeholder="Usuario"  Width="300px"  Height="40px" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator runat="server" ControlToValidate="txtUserName" ErrorMessage="El nombre es obligatorio." 
             ValidationGroup="Registrar" ToolTip="El nombre de usuario es obligatorio." ID="Usuario" 
             CssClass="text-light" SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div>
   
    <div class="form-group form2">
        <asp:TextBox id="txtPassword" TextMode="Password" type="password" class="text-light mx-auto textbox" placeholder="Contraseña" Width="300px"  Height="40px" runat="server">Contraseña</asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword" ErrorMessage="La contraseña es obligatoria." 
            ValidationGroup="Registrar" 
            ToolTip="El nombre de usuario es obligatorio." ID="Contraseña" CssClass="text-light" 
            SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div>
         <div class="form-group form2">
            <asp:TextBox  id="txtNombre" type="text" class="text-light mx-auto textbox" placeholder="Nombres" Width="300px"  Height="40px" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtNombre" ErrorMessage="El Nombre es obligatorio." 
            ValidationGroup="Registrar" 
            ToolTip="El nombre de usuario es obligatorio." ID="RequiredFieldValidator2" CssClass="text-light" 
            SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div>   
        <div class="form-group form2">
            <asp:TextBox  id="txtApellido" type="text" class="text-light mx-auto textbox" placeholder="Apellido" Width="300px"  Height="40px" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtApellido" ErrorMessage="El Apellido es obligatorio." 
            ValidationGroup="Registrar" 
            ToolTip="El nombre de usuario es obligatorio." ID="Apelli" CssClass="text-light" 
            SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div>
         <div class="form-group form2">
               <asp:TextBox ID="txtFechaNacimiento" runat="server" TextMode="Date" Width="300px"  Height="40px" CssClass="mx-auto textbox" style="color:#755353"></asp:TextBox>
             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFechaNacimiento" ErrorMessage="La fecha de nacimiento es obligatorio." 
            ValidationGroup="Registrar" 
            ToolTip="El nombre de usuario es obligatorio." ID="FecNacimiento" CssClass="text-light" 
            SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div>
                 <div class="form-group form2">
                     <asp:DropDownList ID="ddlTipoDocumento" runat="server" Width="300px"  Height="40px" CssClass="mx-auto textbox" style="color:#755353" >
                <asp:ListItem >ELIJA OPCION</asp:ListItem>
                 <asp:ListItem>DNI</asp:ListItem>
                 <asp:ListItem>PASAPORTE</asp:ListItem>
                 <asp:ListItem>CEDULA</asp:ListItem>
                </asp:DropDownList>
             <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlTipoDocumento" ErrorMessage="La fecha de nacimiento es obligatorio." 
            ValidationGroup="Registrar" 
            ToolTip="Elegir una opcion es obligatorio." ID="Documento" CssClass="text-light" 
            SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div>
               <div class="form-group form2">
               <asp:TextBox ID="txtNroDocumento" runat="server" Width="300px" Height="40px" placeholder="Numero Documento" CssClass="text-dark mx-auto textbox"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtNroDocumento" ErrorMessage="La fecha de nacimiento es obligatorio." 
            ValidationGroup="Registrar" 
            ToolTip="Ingrese su numero de documento" ID="NroDoc" CssClass="text-light" 
            SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div>
                <div class="form-group form2">
               <asp:TextBox ID="txtNroCelular" runat="server" Width="300px"  Height="40px" placeholder="Numero de Celular" CssClass="text-dark mx-auto textbox"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtNroCelular" ErrorMessage="El Numero del celular es obligatorio." 
            ValidationGroup="Registrar" 
            ToolTip="Ingrese su numero de celular." ID="rfvNroCelular" CssClass="text-light" 
            SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div>
               <div class="form-group form2">
               <asp:TextBox ID="txtDireccion" runat="server" Width="300px"  Height="40px" placeholder="Direccion" CssClass="text-dark mx-auto textbox"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDireccion" ErrorMessage="El Numero del celular es obligatorio." 
            ValidationGroup="Registrar" 
            ToolTip="Ingrese su numero de celular." ID="rfvDireccion" CssClass="text-light" 
            SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div>

               <div class="form-group form2">
               <asp:DropDownList ID="ddlCondicion" runat="server" Width="300px" placeholder="Estado Civil" Height="40px" CssClass="mx-auto textbox" style="color:#755353" >
                <asp:ListItem>ELIJA OPCION</asp:ListItem>
                 <asp:ListItem> SOLTERO/A</asp:ListItem>
                 <asp:ListItem>CASADO/A</asp:ListItem>
                 <asp:ListItem>VIUDO/A</asp:ListItem>
                </asp:DropDownList>
                   <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlCondicion" ErrorMessage="El Numero del celular es obligatorio." 
            ValidationGroup="Registrar" 
            ToolTip="Ingrese su numero de celular." ID="Estado" CssClass="text-light" 
            SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div>
               <div class="form-group form2">
               <asp:TextBox ID="txtOcupacion" runat="server" Width="300px" Height="40px" placeholder="Ocupacion" CssClass="text-dark mx-auto textbox"></asp:TextBox>
             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtOcupacion" ErrorMessage="El Numero del celular es obligatorio." 
            ValidationGroup="Registrar" 
            ToolTip="Ingrese su numero de celular." ID="rfvOcupacion" CssClass="text-light" 
            SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div>
        <asp:Button ID="btnEnviar" Text="Enviar" runat="server"   class="btn btn-outline-dark text-light" ValidationGroup="Registrar" OnClick="btnEnviar_Click"/>
       
        <a href="Log.aspx" role="button" class="btn btn-outline-dark text-light">Loguearse</a>
    </div>
    </form>   

   
</body>
</html>
