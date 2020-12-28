using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Adopcion
{
    public partial class SiteMaster : MasterPage
    {
        AdopcionBDDataContext adopcion = new AdopcionBDDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            string usuario = Session["Usuario"].ToString();

            var consulta = from A in adopcion.TAdministrador
                           where A.Usuario == usuario
                           select new { A.Nombre };
            string nombreU = string.Empty;
            foreach (var a in consulta)
            {
                nombreU = a.Nombre.ToString();
            }
            lblUsuario.Text = "Bienvenido " + nombreU;
            lblUsuario.DataBind();

        }

        protected void Unnamed4_Click(object sender, EventArgs e)
        {
            Session.Contents.RemoveAll();
            Response.Redirect("NosotrosPublico.aspx");
        }
    }
}