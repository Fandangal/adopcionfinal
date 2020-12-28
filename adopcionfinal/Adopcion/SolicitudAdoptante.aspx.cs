using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Adopcion
{
    public partial class SolicitudAdoptante : System.Web.UI.Page
    {
        AdopcionBDDataContext adopcion = new AdopcionBDDataContext();
        string idM = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            var asociacion = from A in adopcion.Torganizacion
                             select new { A.Nombre };

            List<string> datos = new List<string>();
            foreach (var A in asociacion)
            {
                datos.Add(A.Nombre);
                
            }
            if (!IsPostBack)
            {
                ddlOrganizaciones.DataSource = datos;               
                
                ddlOrganizaciones.DataBind();
            }            
        }
        
        protected void btnRegistro_Click(object sender, EventArgs e)
        {
            idM = Session["Mascota"].ToString();
            string Organizacion = ddlOrganizaciones.SelectedValue.Trim();
            var idOrg = from O in adopcion.Torganizacion
                        where O.Nombre == Organizacion
                        select new { O.IdOrganizacion };
            string idOrganizacion = string.Empty;
            foreach (var i in idOrg)
            {
                idOrganizacion = i.IdOrganizacion.ToString();
            }
            

            var idAdop = from a in adopcion.TAdoptante
                         where a.Usuario == Session["Usuario"].ToString()
                         select new { a.IdAdoptante };

            string idAdoptante = string.Empty;
            foreach (var r in idAdop)
            {
                idAdoptante = r.IdAdoptante.ToString();
            }            
            string estado = "En Espera";
            DateTime fecha = Convert.ToDateTime(txtFechaSolicitud.Text.Trim());
            string descripcion = Descripcion.Value.Trim();

            var resultado = from A in adopcion.spAgregarSolicitud(idOrganizacion, idM, idAdoptante, estado, fecha, descripcion)
                            select A;
            byte codError = 0;
            string mensaje = string.Empty;

            foreach (var A in resultado)
            {
                codError = Convert.ToByte(A.CodError);
                mensaje = A.Mensaje;
            }
            if (codError == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + mensaje + "');", true);


            }
            else if (codError == 1)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + mensaje + "');", true);
            }
        }
    }
}