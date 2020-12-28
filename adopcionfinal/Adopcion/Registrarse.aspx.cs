using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Adopcion
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        AdopcionBDDataContext adopcion = new AdopcionBDDataContext();
        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            
            string usuario = txtUserName.Text.Trim();
            string contrasena = txtPassword.Text.Trim();
            string nombre = txtNombre.Text.Trim();
            string apellido = txtApellido.Text.Trim();
            DateTime fechaNacimiento =Convert.ToDateTime( txtFechaNacimiento.Text.Trim());
            string tipoDocumento = ddlTipoDocumento.SelectedItem.Value;
            string nroDocumento = txtNroDocumento.Text.Trim();
            string nroCelular = txtNroCelular.Text.Trim();
            string Direccion = txtDireccion.Text.Trim();
            string estadoCivil = ddlCondicion.SelectedItem.Value;
            string ocupacion = txtOcupacion.Text.Trim();

            var resultado = from A in adopcion.spAgregarAdoptante( usuario, nombre, apellido, fechaNacimiento, tipoDocumento, nroDocumento, nroCelular, Direccion, estadoCivil, ocupacion,contrasena)
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