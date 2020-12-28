<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MantenimientoMascota.aspx.cs" Inherits="Adopcion.MantenimientoMascota" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView class="table"  ID="gvMascotas" runat="server" AutoGenerateColumns="False" DataKeyNames="IdMascota" DataSourceID="LinqDataSource1">
        <Columns>
            <asp:BoundField DataField="IdMascota" HeaderText="IdMascota" InsertVisible="False" ReadOnly="True" SortExpression="IdMascota" />
            <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Sexo" HeaderText="Sexo" SortExpression="Sexo" />
            <asp:BoundField DataField="Raza" HeaderText="Raza" SortExpression="Raza" />
            <asp:BoundField DataField="TipoMascota" HeaderText="TipoMascota" SortExpression="TipoMascota" />
            <asp:BoundField DataField="Imagen" HeaderText="Imagen" SortExpression="Imagen" Visible="False" />
            <asp:BoundField DataField="Tamaño" HeaderText="Tamaño" SortExpression="Tamaño" />
            <asp:BoundField DataField="FechaNacAprox" HeaderText="FechaNacAprox" SortExpression="FechaNacAprox" />
            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Adopcion.AdopcionBDDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="TMascota">
    </asp:LinqDataSource>
</asp:Content>
