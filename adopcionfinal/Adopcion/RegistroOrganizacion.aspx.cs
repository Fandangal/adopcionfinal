using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Adopcion
{
    public partial class RegistroOrganizacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        AdopcionBDDataContext adopcion = new AdopcionBDDataContext();
        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
           
            string nombre = Nombre.Text.Trim();
            string direccion = DireccionUBI.Text.Trim();
            string locaclidad = Localidad.Text.Trim();
            string nroContacto = NroContacto.Text.Trim();
            string correo = Correo.Text.Trim();

            var resultado = from A in adopcion.spAgregarOrganizacion(nombre,direccion,locaclidad,nroContacto,correo)
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

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            
            string nombre = Nombre.Text.Trim();
            string direccion = DireccionUBI.Text.Trim();
            string locaclidad = Localidad.Text.Trim();
            string nroContacto = NroContacto.Text.Trim();
            string correo = Correo.Text.Trim();

            var resultado = from A in adopcion.spActualizarOrganizacion(nombre, direccion, locaclidad, nroContacto, correo)
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

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            string correoOrganizacion = Correo.Text.Trim();

            var resultado = from A in adopcion.spEliminarOrganizacion(correoOrganizacion)
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