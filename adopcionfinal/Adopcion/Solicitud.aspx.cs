using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Adopcion
{
    public partial class Solicitud : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Codigo_TextChanged(object sender, EventArgs e)
        {

        }
        AdopcionBDDataContext adopcion = new AdopcionBDDataContext();




        protected void btnRegistro_Click(object sender, EventArgs e)
        {
            string idSolicitud = txtIdSolcitud.Text.Trim();
            string idOrganizacion = txtIdOrganizacion.Text.Trim();
            string idMascota = txtIdMascota.Text.Trim();
            string idAdopta = txtIdAdoptante.Text.Trim();
            string estado = "En Adopcion";
            DateTime fecha = Convert.ToDateTime(txtFechaSolicitud.Text.Trim());
            string descripcion = Descripcion.Value.Trim();

            var resultado = from A in adopcion.spAgregarSolicitud( idOrganizacion, idMascota, idAdopta, estado, fecha, descripcion)
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

        
    
