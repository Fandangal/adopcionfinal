using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Adopcion
{
    public partial class Registros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

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
        AdopcionBDDataContext adopcion = new AdopcionBDDataContext();
        protected void btnRegistrar_Click(object sender, EventArgs e)
        {   //obtener datos de la imagen
            int tamano = fuSubirImagen.PostedFile.ContentLength;
            byte[] ImageOriginal = new byte[tamano];
            fuSubirImagen.PostedFile.InputStream.Read(ImageOriginal, 0, tamano);
            Bitmap ImagenOriginalBinaria = new Bitmap(fuSubirImagen.PostedFile.InputStream);
            //Crear imagen Thumbnail redimensionada
            System.Drawing.Image imtThumbnail;
            int TamanoThumbnail = 200;
            imtThumbnail = RedimencionarImagen(ImagenOriginalBinaria, TamanoThumbnail);
            byte[] bImagenThumbnail = new byte[TamanoThumbnail];
            ImageConverter Convertidor = new ImageConverter();
            bImagenThumbnail = (byte[])Convertidor.ConvertTo(imtThumbnail, typeof(byte[]));
            //Obetener datos restantes
            string nombreArchivo = string.Empty;
            string ruta = string.Empty;
            if (fuSubirImagen.HasFile)
            {
                nombreArchivo = fuSubirImagen.FileName;
                ruta = "~/ImgMascotas/" + nombreArchivo;
                fuSubirImagen.SaveAs(Server.MapPath(ruta));
            }

            string estado = txtEstado.Text.Trim();
            string nombre = txtNombre.Text.Trim();
            string sexo = ddlSexo.SelectedItem.Value;
            string raza = txtRaza.Text.Trim();
            string tipoMascota = txtTipoMascota.Text.Trim();
            string tamano_m = txtTamaño.Text.Trim();
            DateTime fechaNacimiento = Convert.ToDateTime(txtFechaNacimiento.Text.Trim());
            string descripcion = TextArea1.Value.Trim();




            //Para insertar a la base de datos


            var resultado = from A in adopcion.spAgregarMascota(estado,nombre,sexo,raza,tipoMascota,ruta,tamano_m,fechaNacimiento,descripcion)
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


            //Para visualizar en una imagen
            string ImagenDataURL64 = "data:image/jpg;base64," + Convert.ToBase64String(bImagenThumbnail);
            


        }
    }
}