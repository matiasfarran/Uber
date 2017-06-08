using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace UberFrba.Abm_Rol
{
    public class Rol
    {
        public int id { get; set; }
        public string nombre { get; set; }
        public bool inactivo { get; set; }
        public Rol() { }
        public Rol(int id, string nombre, bool inactivo)
        {

            this.id = id;
            this.nombre = nombre;
            this.inactivo = inactivo;
        }
    }
}
