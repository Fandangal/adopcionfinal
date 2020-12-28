using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Adopcion
{
    public partial class MisSolicitudesAdoptante : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            cargarMisSolicitudes();
        }

        protected void cargarMisSolicitudes()
        {
            AdopcionBDDataContext adopcion = new AdopcionBDDataContext();
            string usuarioAdoptante = Session["Usuario"].ToString();
            var consulta = from Adoptante in adopcion.TAdoptante
                           where Adoptante.Usuario == usuarioAdoptante
                           select new { idAdoptante = Adoptante.IdAdoptante };
            string idAdoptante = "";
            foreach (var a in consulta)
            {
                idAdoptante = a.idAdoptante.ToString();
            }

            var MisSolicitudes = from Solicitudes in adopcion.TSolicitud
                                 join Mascota in adopcion.TMascota on Solicitudes.IdMascota equals Mascota.IdMascota
                                 where Solicitudes.IdAdoptante.ToString() == idAdoptante
                                 select new { Codigo = Solicitudes.IdSolicitud, Mascota = Mascota.Nombre, Solicitudes.FechaSolicitud, Estado = Solicitudes.Estado };
            gvMisSolicitudes.DataSource = MisSolicitudes;
            gvMisSolicitudes.DataBind();

            
        }
    }
}