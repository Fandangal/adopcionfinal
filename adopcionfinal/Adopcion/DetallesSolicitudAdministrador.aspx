<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DetallesSolicitudAdministrador.aspx.cs" Inherits="Adopcion.DetallesSolicitudAdministrador" %>
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
        .texto1{
            height:50px;
        }
        .texto2 h2{
            padding-top: 10px;
        }
        .form3{
           width: 95%;
          font-size: 20px;
          padding: 8px 0;
          margin: 8px;
          overflow: hidden;
    }

       
    </style>


    <div class="form-group">
        <div class="row">
        <div class="form-group form3 mx-auto">
            <asp:Label ID="Label1" runat="server" Text="Nombre de la mascota:"
                class="text-dark textbox"></asp:Label>
            <p></p>
            <asp:TextBox ID="txtNombreMascota" runat="server" Enabled="False"
                class="text-dark textbox"></asp:TextBox>
            </div>
        <div class="form-group form3 mx-auto">
            <asp:Label ID="Label2" runat="server" Text="Nombre de Adoptante:"
                class="text-dark textbox"></asp:Label>
            <p></p>
            <asp:TextBox ID="txtNombreAdoptante" runat="server" Enabled="False"
                 ></asp:TextBox>
            </div>
        <div class="form-group form3 mx-auto">
            <asp:Label ID="Label3" runat="server" Text="Organizacion:"
                class="text-dark textbox"></asp:Label>
            <p></p>
            <asp:TextBox ID="txtOrganizacion" runat="server" Enabled="False"
                ></asp:TextBox>
        </div>
        <div class="form-group form3 mx-auto">
            <asp:Label ID="Label4" runat="server" Text="Fecha de Solicitud:"
                class="text-dark textbox"></asp:Label>
            <p></p>
            <asp:TextBox ID="txtFecha" runat="server" Enabled="False"
                class="text-dark textbox"></asp:TextBox>
        </div>
        <div class="form-group form3 mx-auto">
            <asp:Label ID="Label5" runat="server" Text="Descripcion:"
                class="text-dark textbox"></asp:Label>
            <p></p>
            <asp:TextBox ID="txtDescripcion" Rows="5" runat="server" Enabled="False" Height="160px" 
                Width="240px" TextMode="MultiLine"></asp:TextBox>
            </div>
        <div class="form-group form3 mx-auto">
            <asp:Button ID="btnAceptar" runat="server" Text="ACEPTAR" OnClick="btnAceptar_Click" 
                class="btn btn-primary" style="padding: 10px 20px"/>
            <asp:Button ID="btnRechazar" runat="server" Text="RECHAZAR" OnClick="btnRechazar_Click" 
                class="btn btn-danger" style="padding: 10px 20px"/>
            <asp:Button ID="btnRegresar" runat="server" Text="REGRESAR" OnClick="btnRegresar_Click" 
                class="btn btn-success" style="padding: 10px 20px"/>
       </div>

<asp:GridView ID="gvPrueba" runat="server">
    </asp:GridView>

        </div>
    </div>
</asp:Content>
