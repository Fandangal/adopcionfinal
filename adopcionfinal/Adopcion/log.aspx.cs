using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Adopcion
{
    public partial class log : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        AdopcionBDDataContext adopcion = new AdopcionBDDataContext();

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string Usuario = UserName.Text.Trim();
            string Contrasena = Password.Text.Trim();

            var resultado = from A in adopcion.spLoginUsuario(Usuario, Contrasena)
                            select A;
            byte codError = 0;
            string tipo = string.Empty;
            foreach (var A in resultado)
            {
                codError = Convert.ToByte(A.CodError);
                tipo = A.Mensaje;
            }

            if (codError == 0)
            {
                if(tipo == "Adoptante")
                {
                    Session["Usuario"] = Usuario;
                    Response.Redirect("NosotrosAdoptante.aspx");
                }
                else if (tipo == "Administrador")
                {
                    Session["Usuario"] = Usuario;
                    Response.Redirect("TablaSolicitud.aspx");
                }            
            }
            else if (codError == 1)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert(' Ingrese bien sus datos  ');", true);
            }
        }
        
    }
}