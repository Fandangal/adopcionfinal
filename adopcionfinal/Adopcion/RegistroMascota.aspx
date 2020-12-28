<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistroMascota.aspx.cs" Inherits="Adopcion.Registros" %>
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
    </style>

     
     <div class="contenedor">
    <div class="row">     
   <div class="col col-lg-2 col-md-2 col-sm-12">
   </div>
     
  
    <div class="form1 text-center mx-auto col col-lg-4 col-md-4 col-sm-12" runat="server">
        <div class="texto1">
        <h2 class="text-dark">Registro de Mascota</h2>
            </div>
  
       
    <div class="form-group form2">
        <asp:TextBox id="txtEstado" type="text" class="text-dark mx-auto textbox"  placeholder="Estado" Width="300px"  
            Height="40px" runat="server" Enabled="False" style="border:none">En Adopcion</asp:TextBox>
         <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEstado" ErrorMessage="El Estado de la mascota es obligatorio." 
             ValidationGroup="RegisMa" ToolTip="El Estado de la mascota es obligatorio." ID="rfvEstado" 
             CssClass="text-dark" SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
       </div>
       <div class="form-group form2">
        <asp:TextBox id="txtNombre"  type="text" class="text-dark mx-auto textbox" placeholder="Nombre" Width="300px"  Height="40px" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtNombre" ErrorMessage="Su nombre de la mascota es Obligatorio" 
            ValidationGroup="RegisMa" 
            ToolTip="El nombre de la mascota es obligatorio." ID="rfvNombre" CssClass="text-dark" 
            SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div>
            
        <div class="form-group form2">
            <asp:DropDownList ID="ddlSexo" runat="server" Width="300px"  Height="40px" CssClass="mx-auto textbox" style="color:#755353">
                <asp:ListItem>Elegir Opcion</asp:ListItem>
                <asp:ListItem>MACHO</asp:ListItem>
                <asp:ListItem>HEMBRA</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlSexo" ErrorMessage="El Sexo de la mascota es obligatorio." 
            ValidationGroup="RegisMa" 
            ToolTip="El sexo de la mascota es obligatorio." ID="rfvSexo" CssClass="text-dark" 
            SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div>
           <div class="form-group form2">
               <asp:TextBox ID="txtRaza" runat="server" type="text" Width="300px"  Height="40px" placeholder="Raza" CssClass="text-dark mx-auto textbox"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtRaza" ErrorMessage="La raza es obligatorio." 
            ValidationGroup="RegisMa" 
            ToolTip="Ingrese La raza del animal." ID="rfvRaza" CssClass="text-dark" 
            SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div>

        <div class="form-group form2">
               <asp:TextBox ID="txtTipoMascota" runat="server" type="text" Width="300px"  Height="40px" placeholder="Tipo de Mascota" CssClass="text-dark mx-auto textbox"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtTipoMascota" ErrorMessage="El tipo de mascota es obligatorio." 
            ValidationGroup="RegisMa" 
            ToolTip="Ingrese el tipo de mascota es obligatoria" ID="rfvTipoMascota" CssClass="text-dark" 
            SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div>


           <div class="form-group form2">
               <asp:TextBox ID="txtTamaño" runat="server" Width="300px" Height="40px" placeholder="Tamaño" CssClass="text-dark mx-auto textbox"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtTamaño" ErrorMessage="El tamaño es obligatorio." 
            ValidationGroup="RegisMa" 
            ToolTip="Ingrese su numero de documento" ID="rfvNroDoc" CssClass="text-dark" 
            SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div>
         <div class="form-group form2">
               <asp:TextBox ID="txtFechaNacimiento" runat="server" TextMode="Date" Width="300px"  Height="30px" CssClass=" mx-auto text-dark" style="border-style:none"></asp:TextBox>
             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFechaNacimiento" ErrorMessage="La fecha de nacimiento es obligatorio." 
            ValidationGroup="RegisMa" 
            ToolTip="El nombre de usuario es obligatorio." ID="FecNacimiento" CssClass="text-dark" 
            SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div>


        <div class="form-group form2">
            <asp:FileUpload ID="fuSubirImagen" runat="server" Height="30px" Style="font-size: 14px" 
                CssClass=" mx-auto text-dark" accept=".jpg" BorderStyle="   None" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="fuSubirImagen" ErrorMessage="Subir la imagen es obligatorio." 
            ValidationGroup="RegisMa" 
            ToolTip="Ingrese el tipo de mascota es obligatoria" ID="rfvSubirImagen" CssClass="text-dark" 
            SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div>
        <div class="form-group form2">
        <textarea id="TextArea1" cols="20" rows="3" class="form-control bg-light mx-auto" runat="server" placeholder="Descripcion" style="height:80px"></textarea>
        </div><p></p>
        <asp:Button ID="btnRegistrar" Text="Registrar" runat="server" class="btn boton boton1 text-light" ValidationGroup="RegisMa" OnClick="btnRegistrar_Click"/>        
        <a href="MantenimientoMascota.aspx" role="button" class="btn boton boton1 text-light">Mostrar</a>
            </div>
            <div class="col col-lg-6 col-md-6 col-sm-12 tex mx-auto img-fluid" style="background:url(imagenes/adopta.jpg)center center;width:100%;height:500px">
            <h4  class="text-justify"  style="color:white;font-size:1.5em">
                
            </h4>
            </div>
           </div>
       
  </div>
</asp:Content>
