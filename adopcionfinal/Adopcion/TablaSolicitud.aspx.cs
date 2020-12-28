using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Adopcion
{
    public partial class TablaSolicitud : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CargarSolicitudesPendientes();
            CargarSolicitudesRechazadas();
            CargarSolicitudesAceptadas();
        }
        AdopcionBDDataContext adopcion = new AdopcionBDDataContext();
        private void CargarSolicitudesPendientes()
        {
            ConsultaGrid cn = new ConsultaGrid();
            gvSolicitudes.DataSource = cn.CargarSolicitudesEspera();
            gvSolicitudes.DataBind();            
            /*
            var consulta = from Solicitudes in adopcion.TSolicitud
                           join Adoptante in adopcion.TAdoptante on Solicitudes.IdAdoptante equals Adoptante.IdAdoptante
                           join Mascota in adopcion.TMascota on Solicitudes.IdMascota equals Mascota.IdMascota
                           select new { Solicitudes.IdSolicitud, Mascota = Mascota.Nombre, Adoptante = Adoptante.Nombre + ' ' + Adoptante.Apellido, Solicitudes.Estado };

            gvSolicitudes.DataSource = consulta;
            gvSolicitudes.DataBind();*/
        }
        private void CargarSolicitudesRechazadas()
        {
            ConsultaGrid cn = new ConsultaGrid();
            gvRechazadas.DataSource = cn.CargarSolicitudesRechazadas();
            gvRechazadas.DataBind();          
           
        }
        private void CargarSolicitudesAceptadas()
        {
            ConsultaGrid cn = new ConsultaGrid();
            gvAceptadas.DataSource = cn.CargarSolicitudesAprobadas();
            gvAceptadas.DataBind();

        }





        protected void gvSolicitudes_SelectedIndexChanged(object sender, EventArgs e)
        {
            string codSolicitud = gvSolicitudes.SelectedRow.Cells[0].Text;
        }

        protected void gvSolicitudes_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes.Add("onMouseOver" , "this.style.cursor = 'pointer' ");
                e.Row.Attributes.Add("onclick ", Page.ClientScript.GetPostBackEventReference(gvSolicitudes, "select$"+e.Row.RowIndex.ToString()));
            }
        }

        protected void gvSolicitudes_SelectedIndexChanged1(object sender, EventArgs e)
        {
            string id = gvSolicitudes.SelectedRow.Cells[0].Text;
            //string idSoli = Convert.ToString(gvSolicitudes.DataKeyNames[gvSolicitudes.SelectedRow.Cells]);
            Session["Solicitud"] = id;
            Response.Redirect("DetallesSolicitudAdministrador.aspx");
            

        }
    }
}