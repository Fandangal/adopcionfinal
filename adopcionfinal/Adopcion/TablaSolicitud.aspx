<%@ Page Title="" Language="C#" EnableEventValidation="false"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TablaSolicitud.aspx.cs" Inherits="Adopcion.TablaSolicitud" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="container">
        <div class="row"   >
            <div class="col-4 mx-auto">

                <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                  <a class="btn btn-outline-dark nav-link " id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">Pendientes</a>
                  <a class="btn btn-outline-dark nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">Rechazadas</a>
                  <a class="btn btn-outline-dark nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">Aceptadas</a>                  
                </div>
            </div>
            
              
        </div>
    </div>
    
      <div class="tab-content" id="v-pills-tabContent">
                  <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                      <div class="table-responsive">
                        <asp:GridView class="table  table-hover text-dark" ID="gvSolicitudes" DataKeyNames="IdSolicitud" runat="server"
                            OnRowDataBound="gvSolicitudes_RowDataBound" OnSelectedIndexChanged="gvSolicitudes_SelectedIndexChanged1" EmptyDataText="No tiene Solicitudes pendientes">
                        </asp:GridView>
                      </div>     
                  </div>
                  <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                      <div class="table-responsive">
                          <asp:GridView class="table" ID="gvRechazadas" runat="server"></asp:GridView>
                      </div>
                  </div>
                  <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                       <div class="table-responsive">
                          <asp:GridView class="table" ID="gvAceptadas" runat="server"></asp:GridView>
                      </div>
                  </div>                  
                </div>
   
    
    
</asp:Content>


