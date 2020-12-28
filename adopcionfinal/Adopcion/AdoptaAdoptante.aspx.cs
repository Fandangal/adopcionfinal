using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Adopcion
{
    public partial class AdoptaAdoptante : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ConsultarImagen();
            gvDatos.Visible = false;
        }
        AdopcionBDDataContext adopcion = new AdopcionBDDataContext();
        public System.Drawing.Image RedimencionarImagen(System.Drawing.Image ImagenOriginal, int Alto)
        {
            var Radio = (double)Alto / ImagenOriginal.Height;
            var nuevoAncho = (int)(ImagenOriginal.Width * Radio);
            var nuevoAlto = (int)(ImagenOriginal.Height * Radio);
            var NuevaImagenRedimencionada = new Bitmap(nuevoAncho, nuevoAlto);
            var g = Graphics.FromImage(NuevaImagenRedimencionada);
            g.DrawImage(ImagenOriginal, 0, 0, nuevoAncho, nuevoAlto);
            return NuevaImagenRedimencionada;
        }
        protected void ConsultarImagen()
        {
            var consulta = from A in adopcion.TMascota
                           where A.Estado =="En Adopcion"
                           select new { A.IdMascota, A.Nombre, A.Imagen , A.Descripcion};

            

            gvDatos.DataSource = consulta;
            gvDatos.DataBind();



            /*DataTable ImagenesM = new DataTable();
            ImagenesM = gvDatos.Table*/
            DataTable dt = new DataTable();
            if (gvDatos.Rows.Count != 0)
            {
                //Forloop for header
                for (int i = 0; i < gvDatos.HeaderRow.Cells.Count; i++)
                {
                    dt.Columns.Add(gvDatos.HeaderRow.Cells[i].Text);
                }
                //foreach for datarow
                foreach (GridViewRow row in gvDatos.Rows)
                {
                    DataRow dr = dt.NewRow();
                    for (int j = 0; j < row.Cells.Count; j++)
                    {
                        dr[gvDatos.HeaderRow.Cells[j].Text] = row.Cells[j].Text;
                    }
                    dt.Rows.Add(dr);
                }
                //Loop for footer
                
                dt.TableName = "tb";
            }

            Repetidor.DataSource = dt;
            Repetidor.DataBind();

            //Repetidor.DataSource = consulta;
            //Repetidor.DataBind();

        }

        protected void Repetidor_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Adoptar")
            {
                Session["Mascota"] = e.CommandArgument.ToString();
                Response.Redirect("SolicitudAdoptante.aspx");
            }
            
        }
    }
}