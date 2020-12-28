<%@ Page Title="" Language="C#"  MasterPageFile="~/SiteAdoptante.Master" AutoEventWireup="true" CodeBehind="SolicitudAdoptante.aspx.cs" Inherits="Adopcion.SolicitudAdoptante"  enableEventValidation ="false"%>
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
          overflow: hidden;
         border-bottom: 1px solid gray;
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
        <h2 class="text-dark">Solicitud </h2>
            </div>
        
        <div class="form-group form2">
            <asp:DropDownList runat="server" ID="ddlOrganizaciones" style="border:none">  

            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" class="text-light" runat="server" ControlToValidate="ddlOrganizaciones" ErrorMessage="Id de organizacion obligatorio" ValidationGroup="A">*</asp:RequiredFieldValidator>
        </div>
        <div class="form-group form2">
               <asp:TextBox ID="txtFechaSolicitud" runat="server" TextMode="Date" Width="300px"  Height="42px" CssClass=" mx-auto text-dark text-center" style="border:none"></asp:TextBox>            
               <asp:RequiredFieldValidator ID="RequiredFieldValidator9" class="text-light" runat="server" ErrorMessage="Fecha de registro obligatorio" ControlToValidate="txtFechaSolicitud" ValidationGroup="A">*</asp:RequiredFieldValidator>
        </div>

         <div class="form-group form2">
        <textarea id="Descripcion" cols="20" rows="3" class="form-control text-dark bg-light mx-auto" runat="server" placeholder="Descripcion" style="height:50px"></textarea>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator11" class="text-light" runat="server" ControlToValidate="Descripcion" ErrorMessage="Requiere Desripcion" ValidationGroup="A"></asp:RequiredFieldValidator>
        </div><p></p>

        <asp:Button ID="btnRegistro" Text="Registrar" runat="server" class="btn boton boton1 text-light" ValidationGroup="A" OnClick="btnRegistro_Click"/>        
        <a href="Log.aspx" role="button" class="btn boton boton1 text-light">Mostrar</a>
            </div>
    
            <div class="col col-lg-6 col-md-6 col-sm-12 tex mx-auto img-fluid" style="background:url(imagenes/organizacion.png)center center">
            <h4  class="text-justify"  style="color:white;font-size:1.5em">
                
            </h4>
            </div>
           </div>
  </div>

</asp:Content>
