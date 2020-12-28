<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="log.aspx.cs" Inherits="Adopcion.log" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="bootstrap.min.css" />
    <title></title>
     <style>
         @import "https://use.fontawesome.com/releases/v5.5.0/css/all.css";
     body{
  margin: 0;
  padding: 0;
  font-family: sans-serif;
  background: url(imagenes/p.png) no-repeat center center fixed;
 background-size: 100% 100%;
}
.form1{
            font-size: 1em;
            text-size-adjust: auto;
            width:290px;
            margin-top:20%;
        } 
.form2{
     width: 100%;
  font-size: 20px;
  padding: 8px 0;
  margin: 8px 0;
  border-bottom: 1px solid white;
  overflow: hidden;
}
.textbox{
    border: none;
  outline: none;
  background: none;
  font-size: 18px;
  width: 80%;
  margin: 0 10px;
}
i{
  width: 26px;
  float: left;
  text-align: center;
  background:none;
  color:white;
}

    </style>
</head>
<body>

    <form id="form1" runat="server" class="form1 mx-auto">
            <div class="formu" id="Login1" runat="server">
                <p class="text-light">LOGIN</p>
                <span class="text-light">USUARIO</span>
                <div class="text-center form-group form2">
                     <i class="fas fa-user i"></i>
                <asp:TextBox ID="UserName" type="email" runat="server" CssClass="mx-auto textbox text-light" Width="250px" ></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" ErrorMessage="El nombre de usuario es obligatorio." ValidationGroup="Login1" ToolTip="El nombre de usuario es obligatorio." ID="UserNameRequired" CssClass="text-light">*</asp:RequiredFieldValidator>
                    </div>
                <span class="text-light">CONTRASEÑA</span>
                <div class="form-group text-center form2">
                    <i class="fas fa-lock i"></i>  
                    <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="mx-auto textbox text-light" Width="250px" ></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" ErrorMessage="La contrase&#241;a es obligatoria." ValidationGroup="Login1" ToolTip="La contrase&#241;a es obligatoria." ID="PasswordRequired"  CssClass="text-light">*</asp:RequiredFieldValidator>
                      </div> 
                
                    <asp:Button runat="server" CommandName="Login1" Text="Inicio de sesi&#243;n" ID="LoginButton" CssClass="btn btn-danger" ValidationGroup="Login1" OnClick="LoginButton_Click" />
                    <a class="btn btn-primary" href="Registrarse.aspx" role="button"  >Registrarse</a>  
                    <p></p>
                    <a class="btn btn-dark" href="NosotrosPublico.aspx" role="button"  >Pagina Publica</a> 
            </div>

    </form>
  

</body>
</html>
