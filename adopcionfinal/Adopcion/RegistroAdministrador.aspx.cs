using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Adopcion
{
    public partial class RegistroAdministrador : System.Web.UI.Page
    {
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
        AdopcionBDDataContext adopcion = new AdopcionBDDataContext();
        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            
            string usuario = UserNam.Text.Trim();
            string contrasena = txtPassword.Text.Trim();
            string nombre = Nombre.Text.Trim();
            string apellido = Apellido.Text.Trim();
            string direccion = Direccion.Text.Trim();
            string nroCelular = NroCelular.Text.Trim();
            string tipoDocumento = TipoDocumento.SelectedItem.Value;
            string nroDocumento = NroDocumento.Text.Trim();
            string Organizacion = ddlOrganizaciones.SelectedValue.Trim();
            var idOrg = from O in adopcion.Torganizacion
                        where O.Nombre == Organizacion
                        select new { O.IdOrganizacion };
            string idOrganizacion = string.Empty;
            foreach (var i in idOrg)
            {
                idOrganizacion = i.IdOrganizacion.ToString();
            }

            var resultado = from A in adopcion.spAgregarAdministrador(nombre, apellido, direccion, nroCelular, tipoDocumento, nroDocumento, usuario, idOrganizacion, contrasena)
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