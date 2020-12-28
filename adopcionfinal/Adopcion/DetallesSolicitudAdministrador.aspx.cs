using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Adopcion
{
    public partial class DetallesSolicitudAdministrador : System.Web.UI.Page
    {
        AdopcionBDDataContext adopcion = new AdopcionBDDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            string idSolicitud = Session["Solicitud"].ToString();
            ConsultaGrid cg = new ConsultaGrid();
            txtNombreAdoptante.Text = cg.nombreAdopSol(idSolicitud);
            txtNombreAdoptante.DataBind();
            txtNombreMascota.Text = cg.nombreMascSol(idSolicitud);
            txtNombreMascota.DataBind();
            txtOrganizacion.Text = cg.nombreOrgcSol(idSolicitud);
            txtOrganizacion.DataBind();
            txtFecha.Text = cg.fechaSol(idSolicitud);
            txtFecha.DataBind();
            txtDescripcion.Text = cg.decripcionSol(idSolicitud);
            txtDescripcion.DataBind();
        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("TablaSolicitud.aspx");
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {

            string idSolicitud = Session["Solicitud"].ToString();
            var consulta = adopcion.spCambiarEstadoSolicitud(idSolicitud, "Aprobado");
            NotificarAceptaEmail();
            var ConsultaidAdoptante = from S in adopcion.TSolicitud
                                      where S.IdSolicitud.ToString() == idSolicitud
                                      select new { S.IdAdoptante };
            string idAdoptante = "";
            foreach(var a in ConsultaidAdoptante)
            {
                idAdoptante = a.IdAdoptante.ToString();
            }
            var ConsultaidMascota = from S in adopcion.TSolicitud
                                      where S.IdSolicitud.ToString() == idSolicitud
                                      select new { S.IdMascota };
            string idMascota ="";
            foreach (var a in ConsultaidMascota)
            {
                idMascota = a.IdMascota.ToString();
            }

            var consulta1 = from A in adopcion.TAdoptante
                           join S in adopcion.TSolicitud on A.IdAdoptante equals S.IdAdoptante
                           where S.IdMascota.ToString() == idMascota
                           select new { S.IdSolicitud, A.Nombre };

            var consultaEmails = from Adoptante in adopcion.TAdoptante
                                 join Soli in adopcion.TSolicitud on Adoptante.IdAdoptante equals Soli.IdAdoptante
                                 where Soli.IdSolicitud.ToString() !=idSolicitud && Soli.IdMascota.ToString()==idMascota
                                 select new { Email = Adoptante.Usuario };
            List<string> emails = new List<string>();
            foreach(var a in consultaEmails)
            {
                emails.Add(a.Email.ToString());
            }

            for(int i = 0; i < emails.Count(); i++)
            {
                NotificarRechazoParametro(emails[i]);
            }
            //emails = consultaEmails;            
            /*for ( int i=0; i<consultaEmails.Count();i++)
            {
                emails[i] = consultaEmails.;
            }*/

            byte codError = 0;
            string mensaje = string.Empty;

            foreach (var A in consulta)
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

            Response.Redirect("TablaSolicitud.aspx");

            
        }


        protected void btnRechazar_Click(object sender, EventArgs e)
        {
            string idSolicitud = Session["Solicitud"].ToString();
            var consulta = adopcion.spCambiarEstadoSolicitud(idSolicitud, "Rechazado");
            NotificarRechazoEmail();

            byte codError = 0;
            string mensaje = string.Empty;

            foreach (var A in consulta)
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

        protected void NotificarRechazoEmail()
        {
            ConsultaGrid cn = new ConsultaGrid();
            string idSolicitud = Session["Solicitud"].ToString();
            string emailAdop = cn.emailAdopSolic(idSolicitud);
            string body =
                "<b> Buen dia </b>" + txtNombreAdoptante.Text.Trim() + "<br/>"
                + "<b> Su solicitud por la mascota de nombre</b>" + txtNombreMascota.Text.Trim() + "<br/>"
                + "<b> De fecha  </b>" + txtFecha.Text.Trim() + "<br/>"
                + "<b> Le sentimos informar que ha sido rechaza y que puede volver a realizar otra solicitud <br/>";
                

            SmtpClient smtp = new SmtpClient();

            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("aaronadrimel@gmail.com", "Centro De Adopcion");
            mail.To.Add(new MailAddress(emailAdop));
            mail.Subject = "Notificacion de Solicitud de Adopcion";
            mail.IsBodyHtml = true;
            mail.Body = body;

            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new NetworkCredential("aaronadrimel@gmail.com", "aron142536");
            smtp.EnableSsl = true;

            smtp.Send(mail);
        }
        protected void NotificarRechazoParametro(string correoElectronico)
        {
            ConsultaGrid cn = new ConsultaGrid();
            string idSolicitud = Session["Solicitud"].ToString();            
            string body =
                "<b> Buen dia lamentamos informarle que </b>" 
                + "<b> Su solicitud por la mascota de nombre</b>" + txtNombreMascota.Text.Trim() + "<br/>"                
                + "<b> Le sentimos informar que ha sido rechaza y que puede volver a realizar otra solicitud <br/>";


            SmtpClient smtp = new SmtpClient();

            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("aaronadrimel@gmail.com", "Centro De Adopcion");
            mail.To.Add(new MailAddress(correoElectronico));
            mail.Subject = "Notificacion de Solicitud de Adopcion";
            mail.IsBodyHtml = true;
            mail.Body = body;

            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new NetworkCredential("aaronadrimel@gmail.com", "aron142536");
            smtp.EnableSsl = true;

            smtp.Send(mail);
        }
        protected void NotificarAceptaEmail()
        {
            ConsultaGrid cn = new ConsultaGrid();
            string idSolicitud = Session["Solicitud"].ToString();
            string emailAdop = cn.emailAdopSolic(idSolicitud);
            string body =
                "<b> Buen dia </b>" + txtNombreAdoptante.Text.Trim() + "<br/>"
                + "<b> Su solicitud por la mascota de nombre</b>" + txtNombreMascota.Text.Trim() + "<br/>"
                + "<b> De fecha  </b>" + txtFecha.Text.Trim() + "<br/>"
                + "<b> Le informamos que ha sido aceptada y procederemos a comunicarnos con usted mediante una llamada telefonica al numero registrado. <br/>"
                +"<b> Muchas gracias por adoptar :) <br/>";


            SmtpClient smtp = new SmtpClient();

            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("aaronadrimel@gmail.com", "Centro De Adopcion");
            mail.To.Add(new MailAddress(emailAdop));
            mail.Subject = "Notificacion de Solicitud de Adopcion";
            mail.IsBodyHtml = true;
            mail.Body = body;

            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new NetworkCredential("aaronadrimel@gmail.com", "aron142536");
            smtp.EnableSsl = true;

            smtp.Send(mail);
        }
    }
}