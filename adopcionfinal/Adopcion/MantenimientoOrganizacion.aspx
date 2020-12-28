<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MantenimientoOrganizacion.aspx.cs" Inherits="Adopcion.MantenimientoOrganizacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView class="table" ID="gvOrganizaciones" runat="server" AutoGenerateColumns="False" DataKeyNames="IdOrganizacion" DataSourceID="LinqDataSource1">
        <Columns>
            <asp:BoundField DataField="IdOrganizacion" HeaderText="IdOrganizacion" InsertVisible="False" ReadOnly="True" SortExpression="IdOrganizacion" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="DireccionUBI" HeaderText="DireccionUBI" SortExpression="DireccionUBI" />
            <asp:BoundField DataField="Localidad" HeaderText="Localidad" SortExpression="Localidad" />
            <asp:BoundField DataField="nroContacto" HeaderText="nroContacto" SortExpression="nroContacto" />
            <asp:BoundField DataField="CorreoElectronico" HeaderText="CorreoElectronico" SortExpression="CorreoElectronico" />
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    
   
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Adopcion.AdopcionBDDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="Torganizacion">
    </asp:LinqDataSource>
    
   
</asp:Content>
