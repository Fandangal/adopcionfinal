<%@ Page Title="" Language="C#" MasterPageFile="~/SiteAdoptante.Master" AutoEventWireup="true" CodeBehind="AdoptaAdoptante.aspx.cs" Inherits="Adopcion.AdoptaAdoptante" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>

        .descripcion1{
       
    position: relative;
    margin-bottom:auto;
    margin-top:10px;
    padding: 50px 30px;
    text-align: center;
    font-size: 16px;
    font-family: 'GothamRounded-Light';
    background-color:white;
        }

    </style>

       <div class="row ">
        <asp:GridView runat="server" ID="gvDatos">
        </asp:GridView>
        <asp:Repeater ID="Repetidor" runat="server" OnItemCommand="Repetidor_ItemCommand">
            <ItemTemplate>
                <div class="cold-mb-4 col-lg-4 col-md-4 col-sm-12 " >
                    <div class="card">
                    <asp:Image  id="ImagMascotas" Class="card-img-top" runat="server" ImageUrl ='<%#DataBinder.Eval(Container.DataItem,"Imagen") %>' />
                    <br />
                      <div class="card-body">
                    <h5 class="card-title"><%# DataBinder.Eval(Container.DataItem, "Nombre")%></h5>
                    <h6 class="card-text"><%# DataBinder.Eval(Container.DataItem, "Descripcion")%></h6>
                    <asp:Button Class="btn btn-dark" id="btnAdoptar" Text="Adoptar" runat="server" CommandName="Adoptar" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"IdMascota")%>' UseSubmitBehavior="false" />
                    </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater> 





    </div>

    <nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
    <li class="page-item disabled">
      <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#">Next</a>
    </li>
  </ul>
</nav>

</asp:Content>
