using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Adopcion
{
    public class ConsultaGrid
    {
        AdopcionBDDataContext adopcion = new AdopcionBDDataContext();

        public IQueryable CargarGrid()
        {
            var query = from Solicitudes in adopcion.TSolicitud
                        join Adoptante in adopcion.TAdoptante on Solicitudes.IdAdoptante equals Adoptante.IdAdoptante
                        join Mascota in adopcion.TMascota on Solicitudes.IdMascota equals Mascota.IdMascota
                        select new { Solicitudes.IdSolicitud, Mascota = Mascota.Nombre, Adoptante = Adoptante.Nombre + ' ' + Adoptante.Apellido, Solicitudes.Estado };
            return query;
        }
        public IQueryable CargarSolicitudesEspera()
        {
            var query = from Solicitudes in adopcion.TSolicitud
                        join Adoptante in adopcion.TAdoptante on Solicitudes.IdAdoptante equals Adoptante.IdAdoptante
                        join Mascota in adopcion.TMascota on Solicitudes.IdMascota equals Mascota.IdMascota
                        where Solicitudes.Estado.ToString() == "En Espera"
                        select new { Solicitudes.IdSolicitud, Mascota = Mascota.Nombre, Adoptante = Adoptante.Nombre + ' ' + Adoptante.Apellido, Solicitudes.Estado };
            return query;
        }
        public IQueryable CargarSolicitudesRechazadas()
        {
            var query = from Solicitudes in adopcion.TSolicitud
                        join Adoptante in adopcion.TAdoptante on Solicitudes.IdAdoptante equals Adoptante.IdAdoptante
                        join Mascota in adopcion.TMascota on Solicitudes.IdMascota equals Mascota.IdMascota
                        where Solicitudes.Estado.ToString() == "Rechazado"
                        select new { Solicitudes.IdSolicitud, Mascota = Mascota.Nombre, Adoptante = Adoptante.Nombre + ' ' + Adoptante.Apellido, Solicitudes.Estado };
            return query;
        }

        public IQueryable CargarSolicitudesAprobadas()
        {
            var query = from Solicitudes in adopcion.TSolicitud
                        join Adoptante in adopcion.TAdoptante on Solicitudes.IdAdoptante equals Adoptante.IdAdoptante
                        join Mascota in adopcion.TMascota on Solicitudes.IdMascota equals Mascota.IdMascota
                        where Solicitudes.Estado.ToString() == "Aprobado"
                        select new { Solicitudes.IdSolicitud, Mascota = Mascota.Nombre, Adoptante = Adoptante.Nombre + ' ' + Adoptante.Apellido,Telefono=Adoptante.nroCelular, Solicitudes.Estado };
            return query;
        }

        public string nombreAdopSol(string idSolicitud)
        {
            var consulta = from S in adopcion.TSolicitud
                           join Adoptante in adopcion.TAdoptante on S.IdAdoptante equals Adoptante.IdAdoptante
                           where S.IdSolicitud.ToString() == idSolicitud
                           select new { Nombre = Adoptante.Nombre + ' ' + Adoptante.Apellido };
            string nombre = "";
            foreach (var A in consulta)
            {
                nombre = A.Nombre;
            }
            return nombre;
        }
        public string nombreMascSol(string idSolicitud)
        {
            var consulta = from S in adopcion.TSolicitud
                           join Mascota in adopcion.TMascota on S.IdMascota equals Mascota.IdMascota
                           where S.IdSolicitud.ToString() == idSolicitud
                           select new { Nombre = Mascota.Nombre };
            string nombre = "";
            foreach (var A in consulta)
            {
                nombre = A.Nombre;
            }
            return nombre;
        }
        public string nombreOrgcSol(string idSolicitud)
        {
            var consulta = from S in adopcion.TSolicitud
                           join Organizacion in adopcion.Torganizacion on S.IdOrganizacion equals Organizacion.IdOrganizacion
                           where S.IdSolicitud.ToString() == idSolicitud
                           select new { Nombre = Organizacion.Nombre };
            string nombre = "";
            foreach (var A in consulta)
            {
                nombre = A.Nombre;
            }
            return nombre;
        }
        public string fechaSol(string idSolicitud)
        {
            var consulta = from S in adopcion.TSolicitud                           
                           where S.IdSolicitud.ToString() == idSolicitud 
                           select new { Fecha = S.FechaSolicitud.Value.Day+"/"+S.FechaSolicitud.Value.Month + "/" +S.FechaSolicitud.Value.Year };
            string nombre = "";
            foreach (var A in consulta)
            {
                nombre = A.Fecha;
            }
            return nombre;
        }
        public string decripcionSol(string idSolicitud)
        {
            var consulta = from S in adopcion.TSolicitud
                           where S.IdSolicitud.ToString() == idSolicitud
                           select new { Descripcion = S.Descripcion };
            string nombre = "";
            foreach (var A in consulta)
            {
                nombre = A.Descripcion;
            }
            return nombre;
        }
        public string emailAdopSolic(string idSolicitud)
        {
            var consulta = from S in adopcion.TSolicitud
                           join Adoptante in adopcion.TAdoptante on S.IdAdoptante equals Adoptante.IdAdoptante
                           where S.IdSolicitud.ToString() == idSolicitud
                           select new { Email = Adoptante.Usuario};
            string nombre = "";
            foreach (var A in consulta)
            {
                nombre = A.Email;
            }
            return nombre;
        }
    }
}
