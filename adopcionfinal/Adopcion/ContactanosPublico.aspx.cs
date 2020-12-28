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
    public partial class ContactanosPublico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            string body =
                "<b> Nombres: </b>" + txtNombre.Text.Trim() + "<br/>"
                + "<b> Email: </b>" + txtEmail.Text.Trim() + "<br/>"
                + "<b> Compañia: </b>" + txtCompania.Text.Trim() + "<br/>"
                + "<b> TElefono: </b>" + txtTelefono.Text.Trim() + "<br/>"
                + "<b> Comentario: </b>" + TextArea1.Value.Trim();

            SmtpClient smtp = new SmtpClient();

            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("aaronadrimel@gmail.com", "Centro De Adopcion");
            mail.To.Add(new MailAddress("014200758j@uandina.edu.pe"));
            mail.Subject = "Contactanos";
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